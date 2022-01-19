import 'dart:developer';

import 'package:app_cetis27/logica/modelos/usuario.dart';
import 'package:app_cetis27/logica/usuario_activo.dart';
import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:flutter/material.dart';

class PantallaHome1 extends StatelessWidget {
  static String ruta = '/pantallaHome1';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Componentes.getBarraSuperior(
            'Bienvenido(a): ${UsuarioActivo.usuario.nombre}'),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Componentes.getBotonTipo2(
                    'Nuevo reporte',
                    Icons.description,
                    300,
                    50,
                    20,
                    1,
                    argumentos: [UsuarioActivo.usuario],
                  ),
                  Componentes.getBotonTipo2(
                      'Reportes recibidos', Icons.report, 300, 50, 20, 2),
                  Componentes.getBotonTipo2(
                      'Reportes enviados', Icons.history, 300, 50, 20, 3),
                  Componentes.getBotonTipo2(
                      'Categorías pendientes', Icons.category, 300, 50, 20, 4),
                  Componentes.getBotonTipo2(
                      'Ver categorías', Icons.category, 300, 50, 20, 5),
                  Componentes.getBotonTipo2(
                      'Ver estadísticas', Icons.bar_chart, 300, 50, 20, 6),
                  Componentes.getBotonTipo2(
                      'Registrar usuario', Icons.person_add, 300, 50, 20, 7),
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Componentes.getBotonTipo3('Cerrar sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
