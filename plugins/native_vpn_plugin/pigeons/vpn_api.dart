import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class NativeVpnApi {
  void start(String config, List<String>? allowedPackages);
  void stop();
  bool isRunning();
  int getSentBytes();
  int getReceivedBytes();
}

@FlutterApi()
abstract class VpnFlutterApi {
  void onStateChanged(int state);
  void onStatsUpdated(int sent, int received);
}