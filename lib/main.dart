import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/di/model/initialization_helper.dart';
import 'package:peresmeshnik_vpn/di/model/initialization_result.dart';
import 'package:peresmeshnik_vpn/di/widgets/dependency_scope.dart';
import 'package:peresmeshnik_vpn/feature/vpn/widgets/vpn_scope.dart';
import 'package:peresmeshnik_vpn/feature/deep_link/deep_link_scope.dart';
import 'package:peresmeshnik_vpn/feature/routing/routing/widgets/scope/routing_scope.dart';
import 'package:peresmeshnik_vpn/feature/server/servers/widget/scope/servers_scope.dart';
import 'package:peresmeshnik_vpn/feature/settings/excluded_routes/widgets/scope/excluded_routes_scope.dart';
import 'package:peresmeshnik_vpn/feature/vpn/widgets/vpn_update_manager.dart';
import 'package:peresmeshnik_vpn/simple_vpn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Сойка',
      theme: ThemeData.dark(),
      home: const InitializationWrapper(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InitializationWrapper extends StatefulWidget {
  const InitializationWrapper({super.key});

  @override
  State<InitializationWrapper> createState() => _InitializationWrapperState();
}

class _InitializationWrapperState extends State<InitializationWrapper> {
  final Future<InitializationResult> _init = InitializationHelperIo().init();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<InitializationResult>(
      future: _init,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Scaffold(body: Center(child: CircularProgressIndicator()));
        }
        
        if (snapshot.hasError) {
          return Scaffold(body: Center(child: Text('Ошибка: ${snapshot.error}')));
        }
        
        final result = snapshot.data!;
        
        return DependencyScope(
          dependenciesFactory: result.dependenciesFactory,
          repositoryFactory: result.repositoryFactory,
          child: ServersScope(
            child: Builder(
              builder: (context) {
                // Принудительно загружаем серверы после инициализации
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  final serversController = ServersScope.controllerOf(context, listen: false);
                  serversController.fetchServers();
                  print("🔄 Servers fetched on app start");
                });
                return RoutingScope(
                  child: ExcludedRoutesScope(
                    child: VpnScope(
                      vpnRepository: result.repositoryFactory.vpnRepository,
                      initialState: result.initialVpnState,
                      child: VpnUpdateManager(
                        child: DeepLinkScope(
                          child: SimpleVpn(),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
