import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'native_vpn_plugin_platform_interface.dart';

/// An implementation of [NativeVpnPluginPlatform] that uses method channels.
class MethodChannelNativeVpnPlugin extends NativeVpnPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('native_vpn_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
