import 'package:peresmeshnik_vpn/data/model/routing_profile.dart';
import 'package:peresmeshnik_vpn/data/model/server.dart';
import 'package:peresmeshnik_vpn/data/model/vpn_state.dart';

mixin VpnController {
  abstract final VpnState state;

  Future<void> start({
    required Server server,
    required RoutingProfile routingProfile,
    required List<String> excludedRoutes,
  });

  Future<void> updateConfiguration({
    required Server server,
    required RoutingProfile routingProfile,
    required List<String> excludedRoutes,
  });

  Future<void> deleteConfiguration();

  Future<void> stop();
}
