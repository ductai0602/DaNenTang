import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    ));

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  static const answers = [
    'Chắc chắn rồi', 'Có vẻ ổn', 'Hỏi lại sau nhé',
    'Đừng trông chờ', 'Rất đáng ngờ', 'Có!', 'Không!',
  ];
  String answer = 'Hãy nghĩ một câu hỏi,\nrồi chạm vào quả cầu';

  void ask() => setState(() => answer = answers[Random().nextInt(answers.length)]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: GestureDetector(
          onTap: ask,
          child: Container(
            width: 280,
            height: 280,
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              answer,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}