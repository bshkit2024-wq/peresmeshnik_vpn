import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/feature/vpn/widgets/vpn_scope.dart';
import 'package:peresmeshnik_vpn/feature/server/servers/widget/scope/servers_scope.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isConnected = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _checkConnection();
  }

  void _checkConnection() async {
    try {
      final vpnController = VpnScope.vpnControllerMaybeOf(context);
      if (vpnController != null) {
        final state = await vpnController.getCurrentState();
        setState(() {
          _isConnected = state == VpnState.connected;
        });
      }
    } catch (e) {
      print("Error checking connection: $e");
    }
  }

  Future<void> _toggleVpn() async {
    setState(() => _isLoading = true);
    
    try {
      final serversController = ServersScope.controllerOf(context);
      final selectedServer = serversController.selectedServer;
      
      if (selectedServer == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Нет сохранённого сервера")),
        );
        return;
      }
      
      final vpnController = VpnScope.vpnControllerOf(context);
      
      if (_isConnected) {
        await vpnController.stop();
        setState(() => _isConnected = false);
      } else {
        await vpnController.start(
          server: selectedServer,
          routingProfile: null,
          excludedRoutes: [],
        );
        setState(() => _isConnected = true);
      }
    } catch (e) {
      print("Error toggling VPN: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Ошибка: $e")),
      );
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
            // Круг с иконкой
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
                color: _isConnected ? Colors.white : Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            // Статус
            Text(
              _isConnected ? "ЗАЩИТА АКТИВНА" : "ЗАЩИТА НЕ АКТИВНА",
              style: TextStyle(
                fontSize: 18,
                color: _isConnected ? Colors.green : Colors.grey,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 60),
            // Кнопка включения
            _isLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : GestureDetector(
                    onTap: _toggleVpn,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isConnected ? Colors.red : Colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: (_isConnected ? Colors.red : Colors.green).withOpacity(0.5),
                            blurRadius: 30,
                            spreadRadius: 5,
                          ),
                        ],
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
