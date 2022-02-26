import 'dart:developer';

import 'package:app_cetis27/logica/fijar_estatus_reporte.dart';
import 'package:app_cetis27/logica/funciones.dart';
import 'package:app_cetis27/logica/modelos/categoria.dart';
import 'package:app_cetis27/logica/modelos/reporte.dart';
import 'package:app_cetis27/pantallas/pantalla_home_1.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_enviados_2.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_recibidos_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//BOTON DE LAS CARDS
class BotonTipo4 extends StatelessWidget {
  String _texto;
  int _f;
  Color _c;
  double _fs;
  FontWeight _fw;
  Reporte _reporte;
  Categoria _categoria;

  BotonTipo4(this._texto, this._f, this._c, this._fs, this._fw, this._reporte,
      this._categoria);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        _texto,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: _fs,
            fontWeight: _fw,
            color: _c,
          ),
        ),
      ),
      onPressed: () {
        if (_f == 1) {
          //RECIBIDOS
          //Ver
          Funciones.btn4VerReporteRecibido(context, _reporte);
        } else if (_f == 2) {
          //Aceptar
          Funciones.btn4FijarStatusReporte(
              context, _reporte.id as int, 'Atendido', 1);
        } else if (_f == 3) {
          //Reenviar
          Funciones.btn4EditarReporte(context, _reporte);
        } else if (_f == 4) {
          //Rechazar
          Funciones.btn4FijarStatusReporte(
              context, _reporte.id as int, 'Rechazado', 1);
        } else if (_f == 5) {
          //ENVIADOS
          //Ver
          Funciones.btn4VerReporteEnviado(context, _reporte);
        } else if (_f == 6) {
          //Editar
          Funciones.btn4EditarReporte(context, _reporte);
        } else if (_f == 7) {
          //Eliminar
          Funciones.btn4EliminarReporte(context, _reporte.id as int, 1);
        } else if (_f == 8) {
          //VISTA RECIBIDOS
          //Aceptar
          Funciones.btn4FijarStatusReporte(
              context, _reporte.id as int, 'Atendido', 2);
        } else if (_f == 9) {
          //Editar
          Funciones.btn4EditarReporte(context, _reporte);
        } else if (_f == 10) {
          //Rechazar
          Funciones.btn4FijarStatusReporte(
              context, _reporte.id as int, 'Rechazado', 2);
        } else if (_f == 11) {
          //VISTA ENVIADOS
          //Editar
          Funciones.btn4EditarReporte(context, _reporte);
        } else if (_f == 12) {
          //Eliminar
          Funciones.btn4EliminarReporte(context, _reporte.id as int, 2);
        } else if (_f == 13) {
          //CATEGORIAS PENDIENTES
          //Aprobar
          Funciones.btn4AprobarCategoria(context, _categoria);
        } else if (_f == 14) {
          //Editar
          Funciones.btn4EditarCategoria(context, _categoria);
        } else if (_f == 15) {
          //Rechazar
          Funciones.btn4AprobarCategoria(context, _categoria);
        }
      },
    );
  }
}
