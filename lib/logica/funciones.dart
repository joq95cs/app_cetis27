import 'dart:developer';

import 'package:app_cetis27/logica/login.dart';
import 'package:app_cetis27/logica/modelos/reporte.dart';
import 'package:app_cetis27/logica/modelos/usuario.dart';
import 'package:app_cetis27/logica/nuevo_reporte.dart';
import 'package:app_cetis27/logica/usuario_activo.dart';
import 'package:app_cetis27/pantallas/pantalla_home_1.dart';
import 'package:app_cetis27/pantallas/pantalla_home_2.dart';
import 'package:flutter/material.dart';

class Funciones {
  static void login(BuildContext context,
      List<TextEditingController>? controladores, List<dynamic>? argumentos) {
    Login login = Login(controladores![0].text, controladores![1].text);
    Future<Usuario> usuarioRecibido = login.verify();
    usuarioRecibido.then(
      (futuro) {
        Usuario usuario = Usuario(
          futuro.existe,
          id: futuro.id,
          nombre: futuro.nombre,
          apellidoPaterno: futuro.apellidoPaterno,
          apellidoMaterno: futuro.apellidoMaterno,
          nivel: futuro.nivel,
        );
        if (usuario.existe) {
          UsuarioActivo.usuario = usuario;
          if (usuario.nivel == 1 || usuario.nivel == 2 || usuario.nivel == 3) {
            Navigator.pushNamed(
              context,
              PantallaHome1.ruta,
              arguments: usuario,
            );
          } else {
            Navigator.pushNamed(
              context,
              PantallaHome2.ruta,
              arguments: usuario,
            );
          }
        } else {
          log('Usuario o contraseña incorrectos');
        }
      },
    );
  }

  static void agregarReporte(BuildContext context,
      List<TextEditingController>? controladores, List<dynamic>? argumentos) {
    NuevoReporte nuevoReporte = NuevoReporte(
      Reporte(
        asunto: controladores![0].text,
        descripcion: controladores![1].text,
        foto: 'foto.png',
        usuario: argumentos![0].id,
        categoria: 4,
        espacio: 9,
        estatus: 'Pendiente',
      ),
    );

    Future<int> resultado = nuevoReporte.agregar();
    resultado.then(
      (futuro) {
        if (futuro == 0) {
          log('Agregado');
        } else {
          log('Error');
        }
      },
    );
  }

  static void nuevoReporte() {}
}
