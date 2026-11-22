import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: XylophonePage(),
    ));

class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  static const colors = [
    Colors.red, Colors.orange, Colors.yellow, Colors.green,
    Colors.teal, Colors.blue, Colors.purple,
  ];

  Future<void> playNote(int n) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$n.wav'));
  }

  Widget buildKey(int n) => Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: colors[n - 1],
            shape: const RoundedRectangleBorder(),
          ),
          onPressed: () => playNote(n),
          child: const SizedBox.expand(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [for (var i = 1; i <= 7; i++) buildKey(i)],
        ),
      ),
    );
  }
}