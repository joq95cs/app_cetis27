import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonTipo4 extends StatefulWidget {
  String _texto;
  Color _c;
  double _fs;
  FontWeight _fw;
  BotonTipo4(this._texto, this._c, this._fs, this._fw);

  @override
  State<BotonTipo4> createState() => _BotonTipo4State(_texto, _c, _fs, _fw);
}

class _BotonTipo4State extends State<BotonTipo4> {
  String _texto;
  Color _c;
  double _fs;
  FontWeight _fw;
  _BotonTipo4State(this._texto, this._c, this._fs, this._fw);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
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
    );
  }
}
