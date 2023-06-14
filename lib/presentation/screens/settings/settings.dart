import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("settings"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text("restart location"),
            ),
          ],
        ),
      ),
    );
  }
}
