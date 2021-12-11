import 'package:app_cetis27/pantallas/componentes/componentes_stateless/barra_superior.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_statateful/boton_tipo_2.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_statateful/boton_tipo_3.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_statateful/boton_tipo_4.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/area_texto.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/campo_texto_tipo_1.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_1.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_2.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_3.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_4.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_5.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/etiqueta.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'componentes_statateful/boton_tipo_1.dart';

class Componentes {
  static Widget getCampoTextoTipo1(String placeholder, Icon icono,
      bool esPassword, TextEditingController controlador) {
    return CampoTextoTipo1(placeholder, icono, esPassword, controlador);
  }

  static Widget getAreaTexto() {
    return AreaTexto();
  }

  static Widget getBotonTipo1(
      String texto, List<TextEditingController> controladores, int f) {
    return BotonTipo1(texto, controladores, f);
  }

  static Widget getBotonTipo2(
      String texto, IconData icono, double ancho, double alto, double mb) {
    return BotonTipo2(texto, icono, ancho, alto, mb);
  }

  static Widget getBotonTipo3(String texto) {
    return BotonTipo3(texto);
  }

  static Widget getBotonTipo4(String texto, Color c, double fs, FontWeight fw) {
    return BotonTipo4(texto, c, fs, fw);
  }

  static Widget getLogo() {
    return Logo();
  }

  static Widget getEtiqueta(String texto) {
    return Etiqueta(texto);
  }

  static Widget getCardTipo1(int index) {
    return CardTipo1(index);
  }

  static Widget getCardTipo2(int index) {
    return CardTipo2(index);
  }

  static Widget getCardTipo3() {
    return CardTipo3();
  }

  static Widget getCardTipo4() {
    return CardTipo4();
  }

  static Widget getCardTipo5(int index) {
    return CardTipo5(index);
  }

  static AppBar getBarraSuperior(String titulo) {
    return BarraSuperior.getBarraSuperior(titulo);
  }

  static DropdownButton<String> getDesplegable(
      List<String> valores, String base) {
    return DropdownButton<String>(
      value: base,
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
      items: valores.map<DropdownMenuItem<String>>((String valor) {
        return DropdownMenuItem<String>(
          value: valor,
          child: SizedBox(child: Text(valor), width: 140),
        );
      }).toList(),
    );
  }
}
