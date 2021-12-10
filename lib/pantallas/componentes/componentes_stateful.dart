import 'dart:developer';

import 'package:app_cetis27/logica/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonTipo1 extends StatefulWidget {
  String _texto;
  List<TextEditingController> _controladores;
  int _f;
  BotonTipo1(this._texto, this._controladores, this._f);
  @override
  State<BotonTipo1> createState() =>
      _BotonTipo1State(_texto, _controladores, _f);
}

class _BotonTipo1State extends State<BotonTipo1> {
  String _texto;
  List<TextEditingController> _controladores;
  int _f;
  _BotonTipo1State(this._texto, this._controladores, this._f);
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
          setState(() {
            if (_f == 1) {
              //LOGIN
              Login login =
                  Login(_controladores[0].text, _controladores[1].text);
              Future<int> nivel = login.verify();
              nivel.then((valor) {
                log(nivel.toString());
              });
            }
          });
        },
      ),
    );
  }
}
