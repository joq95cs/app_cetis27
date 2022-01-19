import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Desplegable extends StatefulWidget {
  List<String> _valores;
  String _base;
  Desplegable(this._valores, this._base);
  @override
  State<Desplegable> createState() => _DesplegableState();
}

class _DesplegableState extends State<Desplegable> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget._base,
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
      onChanged: (String? v) {},
      items: widget._valores.map<DropdownMenuItem<String>>(
        (String valor) {
          return DropdownMenuItem<String>(
            value: valor,
            child: SizedBox(child: Text(valor), width: 140),
          );
        },
      ).toList(),
    );
  }
}
