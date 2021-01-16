import 'package:flutter/material.dart';

void main() => runApp(Quizz());

class Quizz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ), // Padding
        ), // SafeArea
      ), // Scaffold
    ); // MaterialApp
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> puntaje = [];
  List<String> preguntas = [
    "Pregunta Genero ",
    "Pregunta Edad ",
    "Pregunta Nacionalidad ",
    "Pregunta Religion ",
    "Pregunta Ocupacion ",
    "Pregunta Estado Civil ",
    "Pregunta Familiares ",
    "Pregunta Politica ",
    "Pregunta Plato preferido "
  ];

  int preguntaIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                preguntas[preguntaIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ), // Text
            ), // Center
          ), // Padding
        ), // Expanded
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'Verdadero',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ), // Text
              onPressed: () {
                setState(() {
                  puntaje.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                  preguntaIndex++;
                });
              }, // onPressed
            ), // FlatButton
          ), // Padding
        ), // Expanded
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                'Falso',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ), // Text
              onPressed: () {
                setState(() {
                  puntaje.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                  preguntaIndex++;
                });
              }, // onPressed
            ), // FlatButton
          ), // Padding
        ), // Expanded
        Row(children: puntaje), // Row
      ], // Widget
    ); // Column
  }
}
