import 'dart:developer';

import 'package:app_cetis27/logica/argumentos.dart';
import 'package:app_cetis27/logica/modelos/espacio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesplegableTipo2 extends StatefulWidget {
  List<String> _valores;
  String _base;
  Function? actualizar;
  Function? reiniciar;

  DesplegableTipo2(this._valores, this._base);
  @override
  State<DesplegableTipo2> createState() => _DesplegableTipo2State();
}

class _DesplegableTipo2State extends State<DesplegableTipo2> {
  String _actual = '';

  @override
  void initState() {
    _actual = widget._base;

    widget.actualizar = () {
      List<String> nombresSubespacios = [];
      Argumentos.argsSubespacios.forEach((Espacio subespacio) {
        nombresSubespacios.add(subespacio.nombre as String);
      });

      nombresSubespacios.insert(0, 'Selecciona');

      setState(() {
        widget._valores = nombresSubespacios;
        widget._base = nombresSubespacios[0];
        _actual = nombresSubespacios[0];
      });
    };

    widget.reiniciar = () {
      setState(() {
        widget._valores = ['Seleccione'];
        widget._base = 'Seleccione';
        _actual = 'Seleccione';
      });
    };
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

        if (_actual != 'Seleccione') {
          Argumentos.argsSubespacios.forEach((Espacio espacio) {
            if (_actual == (espacio.nombre as String)) {
              Argumentos.espacioActual = espacio;
            }
          });
        }
      },
    );
  }
}
