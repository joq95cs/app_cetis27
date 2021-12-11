import 'package:app_cetis27/pantallas/pantalla_login.dart';
import 'package:app_cetis27/pantallas/pantalla_vista_reporte_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PantallaLogin(),
    );
  }
}
