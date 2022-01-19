import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonTipo4 extends StatelessWidget {
  String _texto;
  Color _c;
  double _fs;
  FontWeight _fw;
  BotonTipo4(this._texto, this._c, this._fs, this._fw);
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
