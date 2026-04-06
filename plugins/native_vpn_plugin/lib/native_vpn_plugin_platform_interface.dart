import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'native_vpn_plugin_method_channel.dart';

abstract class NativeVpnPluginPlatform extends PlatformInterface {
  /// Constructs a NativeVpnPluginPlatform.
  NativeVpnPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static NativeVpnPluginPlatform _instance = MethodChannelNativeVpnPlugin();

  /// The default instance of [NativeVpnPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelNativeVpnPlugin].
  static NativeVpnPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NativeVpnPluginPlatform] when
  /// they register themselves.
  static set instance(NativeVpnPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
