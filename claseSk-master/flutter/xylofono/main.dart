import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyloApp());

class XyloApp extends StatelessWidget {

  void playSound(nota) {
    final player = AudioCache();
    player.play('xylo$nota.mp3');
  }

  Expanded drawTile({Color color, String nota}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(nota);
          }), // FlatButton
    ); // Expanded
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              drawTile(color: Colors.yellow, nota: "Do"),
              drawTile(color: Colors.orange, nota: "Re"),
              drawTile(color: Colors.red, nota: "Mi"),
              drawTile(color: Colors.lightBlue, nota: "Fa"),
              drawTile(color: Colors.blue, nota: "Sol"),
              drawTile(color: Colors.lightGreen, nota: "La"),
              drawTile(color: Colors.green, nota: "Si"),
              drawTile(color: Colors.amber, nota: "Do"),
            ], // Widget[]
          ), // Column
        ), // body
      ), // Scaffold
    ); // MaterialApp
  }
}
