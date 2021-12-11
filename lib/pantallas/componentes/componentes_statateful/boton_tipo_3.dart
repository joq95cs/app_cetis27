import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonTipo3 extends StatefulWidget {
  String _texto;
  BotonTipo3(this._texto);

  @override
  State<BotonTipo3> createState() => _BotonTipo3State(_texto);
}

class _BotonTipo3State extends State<BotonTipo3> {
  String _texto;
  _BotonTipo3State(this._texto);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        _texto,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            color: Color(0xFF008FFF),
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
      onPressed: () {
        log(_texto);
      },
    );
  }
}
