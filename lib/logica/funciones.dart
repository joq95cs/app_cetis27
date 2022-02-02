import 'dart:developer';
import 'package:app_cetis27/logica/argumentos.dart';
import 'package:app_cetis27/logica/eliminar_reporte.dart';
import 'package:app_cetis27/logica/login.dart';
import 'package:app_cetis27/logica/modelos/categoria.dart';
import 'package:app_cetis27/logica/modelos/reporte.dart';
import 'package:app_cetis27/logica/modelos/usuario.dart';
import 'package:app_cetis27/logica/nueva_categoria.dart';
import 'package:app_cetis27/logica/nuevo_reporte.dart';
import 'package:app_cetis27/logica/reportes_enviados.dart';
import 'package:app_cetis27/logica/usuario_activo.dart';
import 'package:app_cetis27/pantallas/pantalla_home_1.dart';
import 'package:app_cetis27/pantallas/pantalla_home_2.dart';
import 'package:app_cetis27/pantallas/pantalla_nueva_categoria.dart';
import 'package:app_cetis27/pantallas/pantalla_nuevo_reporte.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_enviados_2.dart';
import 'package:app_cetis27/pantallas/pantalla_vista_reporte_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Funciones {
  static void login(BuildContext context) {
    //Botón Tipo 1
    Login login =
        Login(Argumentos.argsLogin[0].text, Argumentos.argsLogin[1].text);
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

  static void agregarReporte(BuildContext context) {
    //Botón Tipo 1
    NuevoReporte nuevoReporte = NuevoReporte(
      Reporte(
        asunto: Argumentos.argsNuevoReporte[0].text,
        descripcion: Argumentos.argsNuevoReporte[1].text,
        foto: 'foto.png',
        usuario: UsuarioActivo.usuario.id,
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

  static void agregarCategoria(BuildContext context) {
    //Botón Tipo 1
    NuevaCategoria nuevaCategoria = NuevaCategoria(
      Categoria(
        nombre: Argumentos.argsNuevaCategoria[0].text,
        descripcion: Argumentos.argsNuevaCategoria[1].text,
        departamento: 3,
        espacio: 2,
      ),
    );

    Future<int> resultado = nuevaCategoria.agregar();
    resultado.then(
      (futuro) {
        if (futuro == 0) {
          log('Agregada');
        } else {
          log('Error');
        }
      },
    );
  }

  static void irPantallaNuevoReporte(BuildContext context) {
    //Botón Tipo 2
    Navigator.pushNamed(context, PantallaNuevoReporte.ruta);
  }

  static void irPantallaNuevaCategoria(BuildContext context) {
    //Botón Tipo 2
    Navigator.pushNamed(context, PantallaNuevaCategoria.ruta);
  }

  static void verReportesEnviados(BuildContext context) {
    //Botón Tipo 2
    ReportesEnviados().obtener().then((futuro) {
      ReportesEnviados.reportesEnviados = futuro;
      Navigator.pushNamed(context, PantallaReportesEnviados2.ruta);
    });
  }

  static void logout(BuildContext context) {
    //Botón Tipo 3
    Argumentos.limpiar();
    UsuarioActivo.usuario = Usuario(false);
    Navigator.pushNamed(context, '/');
  }

  static void verReporte(BuildContext context, Reporte reporte) {
    //Botón Tipo 4
    Argumentos.argsReporteActual = reporte;
    Navigator.pushNamed(context, PantallaVistaReporte2.ruta);
  }

  static void editarReporte(BuildContext context) {
    //Botón Tipo 4
  }
  static void eliminarReporte(BuildContext context, int id) {
    //Botón Tipo 4

    EliminarReporte eliminarReporte = EliminarReporte(id);
    eliminarReporte.eliminar();
  }
}
