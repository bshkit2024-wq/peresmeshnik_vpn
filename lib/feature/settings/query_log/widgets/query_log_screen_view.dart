import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/common/localization/localization.dart';
import 'package:peresmeshnik_vpn/data/model/vpn_log.dart';
import 'package:peresmeshnik_vpn/feature/settings/query_log/widgets/query_log_card.dart';
import 'package:peresmeshnik_vpn/feature/vpn/widgets/vpn_scope.dart';
import 'package:peresmeshnik_vpn/widgets/custom_app_bar.dart';
import 'package:peresmeshnik_vpn/widgets/scaffold_wrapper.dart';

class QueryLogScreenView extends StatefulWidget {
  const QueryLogScreenView({super.key});

  @override
  State<QueryLogScreenView> createState() => _QueryLogScreenViewState();
}

class _QueryLogScreenViewState extends State<QueryLogScreenView> {
  List<VpnLog> _logs = [];

  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final logController = VpnScope.logsControllerOf(context);
    if (!listEquals(logController.logs, _logs)) {
      _logs = [...logController.logs];
    }
  }

  @override
  Widget build(BuildContext context) => ScaffoldWrapper(
    child: Scaffold(
      appBar: CustomAppBar(title: context.ln.queryLog),
      body: QueryLogListView(
        logs: _logs,
        controller: _scrollController,
      ),
    ),
  );

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class QueryLogListView extends StatelessWidget {
  final ScrollController? controller;
  final List<VpnLog> logs;

  const QueryLogListView({
    super.key,
    this.controller,
    required this.logs,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
    controller: controller,
    reverse: true,
    shrinkWrap: logs.length < 50,

    itemBuilder: (context, index) {
      final log = logs[index];

      return QueryLogCard(
        key: ValueKey(log.timeStamp.microsecondsSinceEpoch),
        log: log,
      );
    },
    separatorBuilder: (_, __) => const Divider(),
    itemCount: logs.length,
  );
}
