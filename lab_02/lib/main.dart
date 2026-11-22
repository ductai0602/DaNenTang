import 'package:flutter/material.dart';

void main() => runApp(const MiCardApp());

class MiCardApp extends StatelessWidget {
  const MiCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 60, color: Colors.teal),
              ),
              const SizedBox(height: 12),
              const Text('Phùng Đức Tài',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              const Text('FLUTTER DEVELOPER',
                  style: TextStyle(
                      fontSize: 16, color: Colors.white70, letterSpacing: 2)),
              const SizedBox(height: 24),
              const InfoCard(icon: Icons.phone, text: '+84 123 456 789'),
              const InfoCard(icon: Icons.email, text: 'ductai@gmail.com'),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
        title: Text(text, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}