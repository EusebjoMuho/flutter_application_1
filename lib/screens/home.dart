import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Benvenuto!'),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: () async { await authService.signOut(); Navigator.of(context).pushReplacementNamed('/'); }, child: const Text('Logout')),
          ],
        ),
      ),
    );
  }
}
