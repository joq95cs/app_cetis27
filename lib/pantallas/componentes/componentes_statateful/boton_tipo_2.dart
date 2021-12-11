import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonTipo2 extends StatefulWidget {
  String _texto;
  IconData _icono;
  double _ancho;
  double _alto;
  double _mb;

  BotonTipo2(this._texto, this._icono, this._ancho, this._alto, this._mb);
  @override
  State<StatefulWidget> createState() =>
      _BotonTipo2State(_texto, _icono, _ancho, _alto, _mb);
}

class _BotonTipo2State extends State<BotonTipo2> {
  String _texto;
  IconData _icono;
  double _ancho;
  double _alto;
  double _mb;
  _BotonTipo2State(this._texto, this._icono, this._ancho, this._alto, this._mb);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: _mb), //Margin entre cada botón
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
            log(_texto);
          }),
    );
  }
}
