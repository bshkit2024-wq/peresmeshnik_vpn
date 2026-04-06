import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('О приложении'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Пересмешник',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Версия 1.0.0',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            const Text(
              'Исходный код основан на TrustTunnel',
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 20),
            const Text(
              'Лицензия: Apache License 2.0',
              style: TextStyle(fontSize: 14, color: Colors.white54),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () => _launchUrl('http://www.apache.org/licenses/LICENSE-2.0'),
              child: const Text(
                'http://www.apache.org/licenses/LICENSE-2.0',
                style: TextStyle(fontSize: 12, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Исходный код оригинального проекта:',
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
            InkWell(
              onTap: () => _launchUrl('https://github.com/TrustTunnel'),
              child: const Text(
                'https://github.com/TrustTunnel',
                style: TextStyle(fontSize: 12, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Изменения, внесённые в эту версию:',
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
            const SizedBox(height: 10),
            const Text(
              '• Полностью переработан пользовательский интерфейс\n'
              '• Добавлена статистика трафика\n'
              '• Изменена логика загрузки сервера\n'
              '• Изменены цвета и названия приложения\n'
              '• Добавлен splash screen с чёрным фоном',
              style: TextStyle(fontSize: 12, color: Colors.white54),
            ),
          ],
        ),
      ),
    );
  }

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
