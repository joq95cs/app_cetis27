import 'dart:developer';
import 'package:app_cetis27/logica/argumentos.dart';
import 'package:app_cetis27/logica/funciones.dart';
import 'package:app_cetis27/logica/modelos/reporte.dart';
import 'package:app_cetis27/pantallas/pantalla_vista_reporte_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonTipo4 extends StatelessWidget {
  String _texto;
  int _f;
  Color _c;
  double _fs;
  FontWeight _fw;
  Reporte _reporte;
  BotonTipo4(this._texto, this._f, this._c, this._fs, this._fw, this._reporte);
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
          Funciones.verReporte(context, _reporte);
        } else if (_f == 2) {
        } else if (_f == 3) {
          Funciones.eliminarReporte(context, _reporte.id as int);
        } else if (_f == 4) {
        } else if (_f == 5) {
          Funciones.eliminarReporte(context, _reporte.id as int);
        }
      },
    );
  }
}
