import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/feature/vpn/widgets/vpn_scope.dart';
import 'package:peresmeshnik_vpn/feature/server/servers/widget/scope/servers_scope.dart';
import 'package:peresmeshnik_vpn/data/model/server.dart';
import 'package:peresmeshnik_vpn/data/model/routing_profile.dart';

class SimpleScreen extends StatefulWidget {
  final Server? server;
  
  const SimpleScreen({super.key, this.server});

  @override
  State<SimpleScreen> createState() => _SimpleScreenState();
}

class _SimpleScreenState extends State<SimpleScreen> {
  bool _isConnected = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    if (widget.server != null) {
      _connect();
    }
  }

  Future<void> _connect() async {
    if (widget.server == null) return;
    
    setState(() => _isLoading = true);
    
    try {
      final vpnController = VpnScope.vpnControllerOf(context);
      // Создаём пустой профиль маршрутизации
      final emptyProfile = RoutingProfile.empty();
      await vpnController.start(
        server: widget.server!,
        routingProfile: emptyProfile,
        excludedRoutes: [],
      );
      setState(() => _isConnected = true);
    } catch (e) {
      print("Error: $e");
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _disconnect() async {
    setState(() => _isLoading = true);
    try {
      final vpnController = VpnScope.vpnControllerOf(context);
      await vpnController.stop();
      setState(() => _isConnected = false);
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _isConnected ? Colors.green : Colors.grey.withOpacity(0.3),
              ),
              child: Icon(
                _isConnected ? Icons.power_settings_new : Icons.power_off,
                size: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              _isConnected ? "ЗАЩИТА АКТИВНА" : "ЗАЩИТА НЕ АКТИВНА",
              style: TextStyle(
                color: _isConnected ? Colors.green : Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 50),
            _isLoading
                ? const CircularProgressIndicator()
                : GestureDetector(
                    onTap: _isConnected ? _disconnect : _connect,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isConnected ? Colors.red : Colors.green,
                      ),
                      child: Center(
                        child: Text(
                          _isConnected ? "ВЫКЛ" : "ВКЛ",
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
