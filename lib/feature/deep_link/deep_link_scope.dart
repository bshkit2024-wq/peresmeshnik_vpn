import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:peresmeshnik_vpn/common/controller/widget/state_consumer.dart';
import 'package:peresmeshnik_vpn/common/extensions/context_extensions.dart';
import 'package:peresmeshnik_vpn/common/router/deeplink/deep_link_source.dart';
import 'package:peresmeshnik_vpn/data/model/server_data.dart';
import 'package:peresmeshnik_vpn/feature/deep_link/controller/deep_link_controller.dart';
import 'package:peresmeshnik_vpn/feature/deep_link/controller/deep_link_state.dart';
import 'package:peresmeshnik_vpn/feature/server/servers/widget/scope/servers_scope.dart';
import 'package:peresmeshnik_vpn/vpn_refresh.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeepLinkScope extends StatefulWidget {
  const DeepLinkScope({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<DeepLinkScope> createState() => _DeepLinkScopeState();

  static _InheritedDeepLinkScope? maybeOf(BuildContext context, {bool listen = true}) => listen
      ? context.dependOnInheritedWidgetOfExactType<_InheritedDeepLinkScope>()
      : context.getElementForInheritedWidgetOfExactType<_InheritedDeepLinkScope>()?.widget as _InheritedDeepLinkScope?;

  static _InheritedDeepLinkScope of(BuildContext context, {bool listen = true}) =>
      maybeOf(context, listen: listen) ?? _notFoundInheritedWidgetOfExactType();

  static Never _notFoundInheritedWidgetOfExactType() => throw ArgumentError(
    'Out of scope, not found inherited widget '
        'a _InheritedDeepLinkScope of the exact type',
    'out_of_scope',
  );
}

class _DeepLinkScopeState extends State<DeepLinkScope> {
  late final DeepLinkSource _deepLinkSource;
  late final DeepLinkController _controller;

  @override
  void initState() {
    super.initState();
    print("=== DeepLinkScope initState ===");
    _deepLinkSource = AppLinksSource(AppLinks());
    print("AppLinksSource created");
    _controller = DeepLinkController(
      repository: context.repositoryFactory.deepLinkRepository,
    );
    _deepLinkSource.addListener(_onDeepLinkReceived);
    _deepLinkSource.getInitialLink().then((_) => _onDeepLinkReceived());
  }

  @override
  Widget build(BuildContext context) => StateConsumer<DeepLinkController, DeepLinkState>(
    controller: _controller,
    buildWhen: (previous, current) => previous.parsedData != current.parsedData,
    builder: (context, state, child) => _InheritedDeepLinkScope(
      deepLinkData: _controller.state.parsedData,
      child: child!,
    ),
    child: widget.child,
  );

  void _onDeepLinkReceived() async {
    print("=== _onDeepLinkReceived called ===");
    final link = _deepLinkSource.link;
    print("Link: $link");
    if (link != null && link.startsWith('tt://')) {
      print("Processing link...");
      _controller.onDeepLinkReceived(link.toString());
      
      await Future.delayed(Duration(milliseconds: 100));
      
      final serverData = _controller.state.parsedData;
      print("serverData: $serverData");
      if (serverData != null && mounted) {
        print("Saving server...");
        _saveServerAndConnect(serverData);
      } else {
        print("serverData is NULL!");
      }
    }
  }

  Future<void> _saveServerAndConnect(ServerData serverData) async {
    try {
      print("Saving server to repository...");
      final serverRepository = context.repositoryFactory.serverRepository;
      final server = await serverRepository.addNewServer(request: serverData);
      print("✅ Server saved: $server");
      
      // Принудительное сохранение ID
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('selected_server_id', server.id);
      await prefs.setString('last_server_name', server.serverData.name);
      await prefs.setBool('server_saved', true);
      await prefs.setString('last_server_ip', server.serverData.ipAddress);
      await prefs.setString('last_server_domain', server.serverData.domain ?? '');
      print("✅ Server data saved to SharedPreferences: ${server.id}");
      
      // ПРОВЕРКА: сразу пытаемся прочитать сервер обратно
      try {
        final checkRepo = context.repositoryFactory.serverRepository;
        final allServers = await checkRepo.getAllServers();
        print("🔍 VERIFICATION: Total servers in DB: ${allServers.length}");
        for (var s in allServers) {
          print("   - Server ID: ${s.id}, Name: ${s.serverData.name}");
        }
      } catch (e) {
        print("⚠️ Could not verify DB: $e");
      }
      
      if (mounted) {
        final serversScope = ServersScope.controllerOf(context, listen: false);
        serversScope.fetchServers();
        
        await Future.delayed(const Duration(milliseconds: 500));
        
        final checkServers = serversScope.servers;
        print("🔍 Verification: servers count = ${checkServers.length}");
        
        VpnRefreshNotifier.instance.refresh();
        print("✅ VpnRefreshNotifier.refresh() called");
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("VPN настроен! Нажмите ВКЛ")),
        );
      }
    } catch (e) {
      print("❌ Error saving server: $e");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ошибка: $e")),
        );
      }
    }
  }
}

class _InheritedDeepLinkScope extends InheritedWidget {
  const _InheritedDeepLinkScope({
    required this.deepLinkData,
    required super.child,
  });

  final ServerData? deepLinkData;

  @override
  bool updateShouldNotify(covariant _InheritedDeepLinkScope oldWidget) => deepLinkData != oldWidget.deepLinkData;
}
