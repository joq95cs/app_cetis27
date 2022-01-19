import 'dart:developer';
import 'package:app_cetis27/pantallas/pantalla_nuevo_reporte.dart';
import 'package:app_cetis27/pantallas/pantalla_reportes_enviados_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonTipo2 extends StatelessWidget {
  String _texto;
  IconData _icono;
  double _ancho;
  double _alto;
  double _mb;
  int _f;
  List<TextEditingController>? controladores;
  List<dynamic>? argumentos;

  BotonTipo2(
      this._texto, this._icono, this._ancho, this._alto, this._mb, this._f,
      {this.controladores, this.argumentos});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: _mb),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        child: Container(
          width: _ancho,
          height: _alto,
          child: Row(
            children: [
              Icon(_icono),
              SizedBox(
                width: 15,
              ),
              Text(
                _texto,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          if (_f == 1) {
            Navigator.pushNamed(context, PantallaNuevoReporte.ruta);
          } else if (_f == 2) {
          } else if (_f == 3) {
          } else if (_f == 4) {
          } else if (_f == 5) {
          } else if (_f == 6) {
          } else if (_f == 7) {
          } else if (_f == 8) {
          } else if (_f == 9) {
            Navigator.pushNamed(context, PantallaReportesEnviados2.ruta);
          }
        },
      ),
    );
  }
}