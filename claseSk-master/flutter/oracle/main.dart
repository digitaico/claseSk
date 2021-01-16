import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Runner's Oracle"),
          backgroundColor: Colors.red,
        ), // AppBar
        body: Hal(),
      ), // Scaffold
    ), // MaterialApp
  );
}

class Hal extends StatefulWidget {
  @override
  _HalState createState() => _HalState();
}

class _HalState extends State<Hal> {
  int indexFrase = 0;
  String _frase = "";
  final listaFrases = [
    "Zapatos Asics",
    "Correr es delicioso!",
    "Correr 10k",
    "Adidas Runners en todas ciudades",
    "Me gusta correr en la madrugada",
    "El mejor premio es correr bajo lluvia fuerte",
    "La mejor musica para correr es ODESZA",
    "Hay que tomar agua antes y durante la carrera.",
    "El record de velocidad lo tiene Elliud Kipshoge",
    "Los tiempos de carrera mas rapido se hacen en Berlin",
    "Una maraton es una carrera de 42.2 km",
    "Correr es neurogenico",
    "Correr fortalece el corazon"
  ];

  void playSound() {
    final player = AudioCache();
    player.play('quindar.mp3');
  }

  void ponerFrase() {
    setState(() {
      indexFrase = Random().nextInt(13) + 1;
      _frase = listaFrases[indexFrase];
      playSound();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: FlatButton(
                padding: EdgeInsets.all(20.0),
                child: Image.asset('images/hal9000.jpg'),
                onPressed: () {
                  ponerFrase();
                  // sonido
                }), // FlatButton
          ), // Container
          Container(
            color: Colors.blue,
            width: 350,
            height: 250,
            child: Text(
              "$_frase",
              style: TextStyle(
                fontSize: 26.0,
                letterSpacing: 1.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ), // TextStyle
            ), // Text
          ), // Container
        ], // Widget[]
      ), // Column
    ); // Center
  } // build
}
