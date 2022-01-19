import 'dart:developer';

import 'package:app_cetis27/logica/modelos/usuario.dart';
import 'package:app_cetis27/logica/usuario_activo.dart';
import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:flutter/material.dart';

class PantallaHome2 extends StatelessWidget {
  static String ruta = '/pantallaHome2';
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
                    'Crear reporte',
                    Icons.description,
                    300,
                    50,
                    20,
                    1,
                    argumentos: [UsuarioActivo.usuario],
                  ),
                  Componentes.getBotonTipo2(
                      'Crear categoría', Icons.category, 300, 50, 20, 2),
                  Componentes.getBotonTipo2(
                      'Reportes enviados', Icons.report, 300, 50, 20, 3),
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Componentes.getBotonTipo3('Cerrar sesión'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
