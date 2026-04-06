import 'package:peresmeshnik_vpn/common/error/model/presentation_error.dart';
import 'package:peresmeshnik_vpn/data/model/server.dart';

abstract class ServersScopeController {
  abstract final List<Server> servers;
  abstract final Server? selectedServer;
  abstract final PresentationError? error;
  abstract final bool loading;

  abstract final void Function() fetchServers;
  abstract final void Function(String? serverId) pickServer;
}
