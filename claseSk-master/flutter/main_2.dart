import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Function functionExistente() {
	Text('Ejecute funcion ');
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('My BC'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.airline_seat_legroom_extra),
              tooltip: 'Hola Mundo',
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/jea.jpg'),
              ),
              Text(
                'Jorge Eduardo Ardila',
                style: TextStyle(
                  fontSize: 34.0,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ), // Text
              Text(
                'API DEVELOPER',
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 18.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ), // TextStyle
              ), // Text
              SizedBox(
                height: 20.0,
                width: 140.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 20.0,
                    color: Colors.teal.shade900,
                  ), // Icon
                  title: Text(
                    '+57 3153418393',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.teal.shade900,
                    ), // TextStyle
                  ), // ttile
                ), // ListTile
              ), // Container
              Card(
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 20.0,
                    color: Colors.teal.shade900,
                  ), // Icon
                  title: Text(
                    'micorreo@app.com',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.teal.shade900,
                    ), // TextStyle
                  ), // ttile
                ), // ListTile
              ), // Card

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45.0),
                ),
                color: Colors.pink,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 50.0),
                      title: Text('Cancion de Verano'),
                      subtitle: Text('Soda Stereo'),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: Text('Editar',
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: Text('Guardar',
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {
								functionExistente();
							},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ], // <Widget>[]
          ), // Column
        ), // SafeArea
      ), // Scaffold
    ); // MaterialApp
  }
}
