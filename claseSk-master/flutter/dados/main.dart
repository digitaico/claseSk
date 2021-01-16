import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Juego de Dados'),
          backgroundColor: Colors.purple.shade500,
        ), // AppBar
        body: Dados(),
      ), // Scaffold
    ), // MaterialApp
  );
}

class Dados extends StatefulWidget {
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int dadoIzquierdoNumero = 1;
  int dadoDerechoNumero = 1;

  void tirarDado() {
    setState(() {
      dadoIzquierdoNumero = Random().nextInt(6) + 1;
      dadoDerechoNumero = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
				  tirarDado();
              },
              child: Image.asset('images/dado$dadoIzquierdoNumero.png'),
            ), // FlatButton
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
				  tirarDado();
              },
              child: Image.asset('images/dado$dadoDerechoNumero.png'),
            ), // FlatButton
          ), // Expanded
        ], // Widget
      ), // Row
    ); // Center
  }
}
