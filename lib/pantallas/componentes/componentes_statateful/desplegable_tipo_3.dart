import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesplegableTipo3 extends StatefulWidget {
  List<String> _valores;
  String _base;

  DesplegableTipo3(this._valores, this._base);
  @override
  State<DesplegableTipo3> createState() => _DesplegableTipo3State();
}

class _DesplegableTipo3State extends State<DesplegableTipo3> {
  String _actual = '';

  @override
  void initState() {
    _actual = widget._base;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _actual,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
      underline: Container(
        height: 2,
        color: Color(0xff008FFF),
      ),
      items: widget._valores.map<DropdownMenuItem<String>>(
        (String valor) {
          return DropdownMenuItem<String>(
            value: valor,
            child: SizedBox(child: Text(valor), width: 140),
          );
        },
      ).toList(),
      onChanged: (String? nuevo) {
        setState(() {
          _actual = nuevo!;
        });
      },
    );
  }
}
