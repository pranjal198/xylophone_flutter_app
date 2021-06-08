import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildkey({Color col, int no}) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playsound(no);
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildkey(col: Colors.red, no: 1),
            buildkey(col: Colors.orange, no: 2),
            buildkey(col: Colors.yellow, no: 3),
            buildkey(col: Colors.green, no: 4),
            buildkey(col: Colors.teal, no: 5),
            buildkey(col: Colors.blue, no: 6),
            buildkey(col: Colors.purple, no: 7),
          ]),
        ),
      ),
    );
  }
}
