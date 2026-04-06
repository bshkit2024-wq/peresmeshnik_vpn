import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/data/model/server_data.dart';
import 'package:peresmeshnik_vpn/feature/server/servers/widget/scope/servers_scope.dart';

class SimpleVpnScreen extends StatefulWidget {
  final ServerData? serverData;
  
  const SimpleVpnScreen({super.key, this.serverData});

  @override
  State<SimpleVpnScreen> createState() => _SimpleVpnScreenState();
}

class _SimpleVpnScreenState extends State<SimpleVpnScreen> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    if (widget.serverData != null) {
      _saveServer();
    }
  }

  Future<void> _saveServer() async {
    if (widget.serverData == null) return;
    
    setState(() => _isLoading = true);
    
    try {
      final serversController = ServersScope.controllerOf(context);
      await serversController.addNewServer(serverData: widget.serverData!);
      setState(() => _isLoading = false);
    } catch (e) {
      print("Error saving server: $e");
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VPN"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(0.2),
              ),
              child: const Icon(
                Icons.vpn_key,
                size: 80,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "ГОТОВО К ПОДКЛЮЧЕНИЮ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Настройки успешно импортированы",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 60),
            _isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () {
                      // Здесь нужно открыть экран с переключателем VPN
                      // Пока просто показываем сообщение
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Для подключения нажмите на переключатель в главном меню")),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 55),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "ГОТОВО",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
