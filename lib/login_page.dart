import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login - Gian'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Dummy Logo
            const Icon(Icons.rocket_launch, size: 100, color: Colors.blue),
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang di techexpres',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Menggunakan pushReplacementNamed sesuai permintaan
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Masuk Aplikasi'),
            ),
          ],
        ),
      ),
    );
  }
}