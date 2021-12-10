import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CampoTextoTipo1 extends StatelessWidget {
  String _placeholder;
  Icon _icono;
  bool _esPassword;
  TextEditingController _controlador;
  CampoTextoTipo1(
      this._placeholder, this._icono, this._esPassword, this._controlador);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: _controlador,
        obscureText: _esPassword,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff000912),
          ),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 25),
          hintText: _placeholder,
          hintStyle: TextStyle(
            color: Color(0xffA6B0BD),
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: _icono,
          prefixIconConstraints: BoxConstraints(
            minWidth: 75,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 25,
            offset: Offset(0, 5),
            spreadRadius: -25,
          ),
        ],
      ),
    );
  }
}
