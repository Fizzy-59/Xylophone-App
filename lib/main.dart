import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int nb) {
    final player = AudioCache();
    player.play('note$nb.wav');
  }

  Expanded xylo({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              xylo(color: Colors.red, soundNumber: 1),
              xylo(color: Colors.orange, soundNumber: 2),
              xylo(color: Colors.yellow, soundNumber: 3),
              xylo(color: Colors.green, soundNumber: 4),
              xylo(color: Colors.teal, soundNumber: 5),
              xylo(color: Colors.blue, soundNumber: 6),
              xylo(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
