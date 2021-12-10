import 'package:app_cetis27/pantallas/pantalla_home_1.dart';
import 'package:app_cetis27/pantallas/pantalla_home_2.dart';
import 'package:app_cetis27/pantallas/pantalla_login.dart';
import 'package:app_cetis27/pantallas/pantalla_nueva_categoria.dart';
import 'package:app_cetis27/pantallas/pantalla_nuevo_reporte.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_enviados_1.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_recibidos_1.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_enviados_2.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_recibidos_2.dart';
import 'package:app_cetis27/pantallas/pantalla_vista_reporte_2.dart';
import 'package:app_cetis27/pantallas/pantalla_vista_reporte_1.dart';
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
