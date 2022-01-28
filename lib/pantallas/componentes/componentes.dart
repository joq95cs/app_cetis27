import 'package:app_cetis27/logica/modelos/reporte.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_statateful/desplegable.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/area_texto.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/barra_superior.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/boton_tipo_1.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/boton_tipo_2.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/boton_tipo_3.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/boton_tipo_4.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/campo_texto_tipo_1.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_1.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_2.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_3.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_4.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_5.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/card_tipo_6.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/etiqueta.dart';
import 'package:app_cetis27/pantallas/componentes/componentes_stateless/logo.dart';
import 'package:flutter/material.dart';

class Componentes {
  static CampoTextoTipo1 getCampoTextoTipo1(String placeholder, Icon icono,
      bool esPassword, TextEditingController controlador) {
    return CampoTextoTipo1(placeholder, icono, esPassword, controlador);
  }

  static AreaTexto getAreaTexto(TextEditingController controlador) {
    return AreaTexto(controlador);
  }

  static BotonTipo1 getBotonTipo1(String texto, int f) {
    return BotonTipo1(texto, f);
  }

  static BotonTipo2 getBotonTipo2(String texto, int f, IconData icono,
      double ancho, double alto, double mb) {
    return BotonTipo2(
      texto,
      f,
      icono,
      ancho,
      alto,
      mb,
    );
  }

  static BotonTipo3 getBotonTipo3(String texto) {
    return BotonTipo3(texto);
  }

  static BotonTipo4 getBotonTipo4(
      String texto, int f, Color c, double fs, FontWeight fw, Reporte reporte) {
    return BotonTipo4(texto, f, c, fs, fw, reporte);
  }

  static Logo getLogo() {
    return Logo();
  }

  static Etiqueta getEtiqueta(String texto) {
    return Etiqueta(texto);
  }

  static CardTipo1 getCardTipo1(int index) {
    return CardTipo1(index);
  }

  static CardTipo2 getCardTipo2(int index) {
    return CardTipo2(index);
  }

  static CardTipo3 getCardTipo3() {
    return CardTipo3();
  }

  static CardTipo4 getCardTipo4() {
    return CardTipo4();
  }

  static CardTipo5 getCardTipo5(Reporte reporte) {
    return CardTipo5(reporte);
  }

  static CardTipo6 getCardTipo6(Reporte reporte) {
    return CardTipo6(reporte);
  }

  static AppBar getBarraSuperior(String titulo) {
    return BarraSuperior.getBarraSuperior(titulo);
  }

  static Desplegable getDesplegable(List<String> valores, String base) {
    return Desplegable(valores, base);
  }
}
