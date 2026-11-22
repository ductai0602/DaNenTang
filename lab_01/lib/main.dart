import 'package:flutter/material.dart';

void main() => runApp(const IAmRichApp());

class IAmRichApp extends StatelessWidget {
  const IAmRichApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: Image(image: AssetImage('images/diamond.jpg')),
        ),
      ),
    );
  }
}