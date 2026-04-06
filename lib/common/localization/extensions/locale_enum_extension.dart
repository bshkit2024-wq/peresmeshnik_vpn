import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/common/localization/localization.dart';
import 'package:peresmeshnik_vpn/data/model/routing_mode.dart';
import 'package:peresmeshnik_vpn/data/model/vpn_protocol.dart';

extension LocaleRoutingModeEnumExtension on RoutingMode {
  String localized(BuildContext context) => switch (this) {
    RoutingMode.bypass => context.ln.bypass,
    RoutingMode.vpn => context.ln.vpn,
  };
}

extension LocaleVpnProtocolEnumExtension on VpnProtocol {
  String localized(BuildContext context) => switch (this) {
    VpnProtocol.http2 => context.ln.http2,
    VpnProtocol.quic => context.ln.quic,
  };
}
