import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Login'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.apps),
                onPressed: () {
                  print('Presione icono superior apps');
                },
                tooltip: 'Aplicaciones'), // IconButton

            IconButton(
                icon: Icon(Icons.bluetooth_searching),
                onPressed: () {
                  print('bluetooths search');
                },
                tooltip: 'Aplicaciones'), // IconButton
            IconButton(
                icon: Icon(Icons.pets),
                onPressed: () {
                  print('Pets');
                },
                tooltip: 'Aplicaciones'), // IconButton
          ], // Widget
        ), // AppBar
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu Rapido',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ), // Texto
              ), // Drawerheader
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Mensajes'),
              ), // Tile
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Cuenta'),
              ), // Tile
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuracion'),
              ), // Tile
              ListTile(
                leading: Icon(Icons.wifi),
                title: Text('Conexion'),
              ), // Tile
            ], // Widget
          ), // ListView
        ), // Drawer
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/logo2.png'),
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Aqui ti email',
                ),
              ), // TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Aqui tu password',
                ),
              ), // TextField
              Container(
                width: 70.0,
                height: 70.0,
                child: Center(
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlue,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.fingerprint),
                      iconSize: 50.0,
                      color: Colors.white,
                      tooltip: 'Ingresar',
                      hoverColor: Colors.red,
                      focusColor: Colors.grey,
                      splashColor: Colors.purple,
                      onPressed: () {
						  AlertDialog(title: Text('Hola Mundo'));
						  print('kkkkkkkkkkk');
					  }, 
                    ), // IconButton
                  ), // Ink
                ), // Center
              ), // Container
            ], // Widget
          ), // Column
        ), // Padding body
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightBlueAccent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text('Boton 1'),
            ), // item 1
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text('Boton 1'),
            ), // item 2
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_subway),
              title: Text('Boton 1'),
            ), // item 3
          ], // BNB[]
        ), // BottomNavigationBar
      ), // Scaffold
    ); // MaterialApp
  }


}
