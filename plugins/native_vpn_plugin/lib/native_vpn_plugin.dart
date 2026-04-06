
import 'native_vpn_plugin_platform_interface.dart';

class NativeVpnPlugin {
  Future<String?> getPlatformVersion() {
    return NativeVpnPluginPlatform.instance.getPlatformVersion();
  }
}
