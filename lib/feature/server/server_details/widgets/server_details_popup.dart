import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/data/model/server_data.dart';
import 'package:peresmeshnik_vpn/feature/server/server_details/widgets/scope/server_details_scope.dart';
import 'package:peresmeshnik_vpn/feature/server/server_details/widgets/server_details_view.dart';
import 'package:peresmeshnik_vpn/widgets/scaffold_wrapper.dart';

class ServerDetailsPopUp extends StatelessWidget {
  final String? serverId;

  final ServerData? preloadedData;

  const ServerDetailsPopUp({
    super.key,
    this.serverId,
  }) : preloadedData = null;

  const ServerDetailsPopUp.preloaded({
    super.key,
    required this.preloadedData,
  }) : serverId = null;

  @override
  Widget build(BuildContext context) => ScaffoldWrapper(
    child: ServerDetailsScope(
      serverId: serverId,
      initialData: preloadedData,
      child: const ServerDetailsView(),
    ),
  );
}
