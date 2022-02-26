import 'package:app_cetis27/pantallas/componentes/componentes_statateful/componentes_estaticos.dart';
import 'package:app_cetis27/pantallas/pantalla_categorias.dart';
import 'package:app_cetis27/pantallas/pantalla_categorias_pendientes.dart';
import 'package:app_cetis27/pantallas/pantalla_editar_categoria.dart';
import 'package:app_cetis27/pantallas/pantalla_editar_reporte.dart';
import 'package:app_cetis27/pantallas/pantalla_home_1.dart';
import 'package:app_cetis27/pantallas/pantalla_home_2.dart';
import 'package:app_cetis27/pantallas/pantalla_home_4.dart';
import 'package:app_cetis27/pantallas/pantalla_home_3.dart';
import 'package:app_cetis27/pantallas/pantalla_login.dart';
import 'package:app_cetis27/pantallas/pantalla_nueva_categoria.dart';
import 'package:app_cetis27/pantallas/pantalla_nuevo_reporte.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_enviados_1.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_enviados_2.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_recibidos_1.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_recibidos_2.dart';
import 'package:app_cetis27/pantallas/pantalla_vista_reporte_1.dart';
import 'package:app_cetis27/pantallas/pantalla_vista_reporte_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => PantallaLogin(),
        PantallaHome1.ruta: (context) => PantallaHome1(),
        PantallaHome2.ruta: (context) => PantallaHome2(),
        PantallaHome3.ruta: (context) => PantallaHome3(),
        PantallaHome4.ruta: (context) => PantallaHome4(),
        PantallaNuevoReporte.ruta: (context) => PantallaNuevoReporte(),
        PantallaNuevaCategoria.ruta: (context) => PantallaNuevaCategoria(),
        PantallaReportesRecibidos1.ruta: (context) =>
            PantallaReportesRecibidos1(),
        PantallaReportesRecibidos2.ruta: (context) =>
            PantallaReportesRecibidos2(),
        PantallaReportesEnviados1.ruta: (context) =>
            PantallaReportesEnviados1(),
        PantallaReportesEnviados2.ruta: (context) =>
            PantallaReportesEnviados2(),
        PantallaVistaReporte1.ruta: (context) => PantallaVistaReporte1(),
        PantallaVistaReporte2.ruta: (context) => PantallaVistaReporte2(),
        PantallaCategoriasPendientes.ruta: (context) =>
            PantallaCategoriasPendientes(),
        PantallaCategorias.ruta: (context) => PantallaCategorias(),
        PantallaEditarReporte.ruta: (context) => PantallaEditarReporte(),
        PantallaEditarCategoria.ruta: (context) => PantallaEditarCategoria(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
