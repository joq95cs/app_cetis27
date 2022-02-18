import 'dart:developer';
import 'package:app_cetis27/logica/funciones.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonTipo1 extends StatelessWidget {
  String _texto;
  int _f;

  BotonTipo1(this._texto, this._f);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Color(0xff008FFF),
        borderRadius: BorderRadius.all(Radius.circular(50)),
        boxShadow: [
          BoxShadow(
            color: Color(0x60008FFF),
            blurRadius: 10,
            offset: Offset(0, 5),
            spreadRadius: 0,
          ),
        ],
      ),
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Text(
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
        onPressed: () {
          if (_f == 1) {
            Funciones.login(context);
          } else if (_f == 2) {
            Funciones.agregarReporte(context);
          } else if (_f == 3) {
            Funciones.agregarCategoria(context);
          }
        },
      ),
    );
  }
}
