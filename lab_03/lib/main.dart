import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    ));

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static const faces = ['⚀', '⚁', '⚂', '⚃', '⚄', '⚅'];
  final _random = Random();
  int left = 1;
  int right = 1;

  void roll() {
    setState(() {
      left = _random.nextInt(6) + 1;
      right = _random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.red[900],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(faces[left - 1], style: const TextStyle(fontSize: 120, color: Colors.white)),
                const SizedBox(width: 16),
                Text(faces[right - 1], style: const TextStyle(fontSize: 120, color: Colors.white)),
              ],
            ),
            Text('Tổng: ${left + right}',
                style: const TextStyle(fontSize: 28, color: Colors.white)),
            const SizedBox(height: 24),
            ElevatedButton(onPressed: roll, child: const Text('Tung xúc xắc')),
          ],
        ),
      ),
    );
  }
}