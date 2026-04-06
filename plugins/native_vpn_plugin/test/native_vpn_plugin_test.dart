import 'package:flutter_test/flutter_test.dart';
import 'package:native_vpn_plugin/native_vpn_plugin.dart';
import 'package:native_vpn_plugin/native_vpn_plugin_platform_interface.dart';
import 'package:native_vpn_plugin/native_vpn_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNativeVpnPluginPlatform
    with MockPlatformInterfaceMixin
    implements NativeVpnPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NativeVpnPluginPlatform initialPlatform = NativeVpnPluginPlatform.instance;

  test('$MethodChannelNativeVpnPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNativeVpnPlugin>());
  });

  test('getPlatformVersion', () async {
    NativeVpnPlugin nativeVpnPlugin = NativeVpnPlugin();
    MockNativeVpnPluginPlatform fakePlatform = MockNativeVpnPluginPlatform();
    NativeVpnPluginPlatform.instance = fakePlatform;

    expect(await nativeVpnPlugin.getPlatformVersion(), '42');
  });
}
