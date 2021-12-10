import 'dart:developer';
import 'package:app_cetis27/logica/login.dart';
import 'package:app_cetis27/pantallas/temporal/reportes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'componentes_stateful.dart';

class Componentes {
  static Container getCampoTextoTipo1(String placeholder, Icon icono,
      bool esContra, TextEditingController controlador) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: controlador,
        obscureText: esContra,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff000912),
          ),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 25),
          hintText: placeholder,
          hintStyle: TextStyle(
            color: Color(0xffA6B0BD),
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: icono,
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

  static Widget getBotonTipo1(
      String texto, List<TextEditingController> controladores, int f) {
    return BotonTipo1(texto, controladores, f);
  }

  static Container getBotonTipo2(
      String texto, IconData icono, double ancho, double alto, double mb) {
    return Container(
      margin: EdgeInsets.only(bottom: mb), //Margin entre cada botón
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ),
          child: Container(
            width: ancho,
            height: alto,
            child: Row(
              children: [
                Icon(icono),
                SizedBox(
                  width: 15,
                ),
                Text(
                  texto,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onPressed: () {
            log(texto);
          }),
    );
  }

  static TextButton getBotonTipo3(String texto) {
    return TextButton(
      child: Text(
        texto,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            color: Color(0xFF008FFF),
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
      onPressed: () {
        log(texto);
      },
    );
  }

  static TextButton getBotonTipo4(
      String texto, Color c, double s, FontWeight fw) {
    return TextButton(
      onPressed: () {},
      child: Text(
        texto,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: s,
            fontWeight: fw,
            color: c,
          ),
        ),
      ),
    );
  }

  static Container getLogo() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Image(
        image: AssetImage('assets/img/logo.gif'),
        width: 250,
      ),
    );
  }

  static AppBar getAppBar(String titulo) {
    return AppBar(
      title: Text(
        titulo,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  static Container getAreaTexto() {
    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            maxLines: 10,
            decoration: InputDecoration.collapsed(
              hintText: "Descripción...",
              hintStyle: TextStyle(
                color: Color(0xffA6B0BD),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff000912),
              ),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
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

  static Text getEtiqueta(String texto) {
    return Text(
      texto,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
    );
  }

  static Card getCardTipo1(int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(
              Reportes.recibidos[index].asunto,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000912),
                ),
              ),
            ),
            subtitle: Text(
              '${Reportes.recibidos[index].descripcion}\nServicios escolares',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            isThreeLine: true,
            leading: Reportes.recibidos[index].icono,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              getBotonTipo4('Ver', Colors.blue, 16, FontWeight.w400),
              getBotonTipo4('Aceptar', Colors.blue, 16, FontWeight.w400),
              getBotonTipo4('Reenviar', Colors.blue, 16, FontWeight.w400),
              getBotonTipo4('Rechazar', Colors.red, 16, FontWeight.w400),
            ],
          ),
        ],
      ),
    );
  }

  static Card getCardTipo2(int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(
              Reportes.recibidos[index].asunto,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000912),
                ),
              ),
            ),
            subtitle: Text(
              Reportes.recibidos[index].descripcion,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            leading: Reportes.recibidos[index].icono,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              getBotonTipo4('Ver', Colors.blue, 16, FontWeight.w400),
              getBotonTipo4('Aceptar', Colors.blue, 16, FontWeight.w400),
              getBotonTipo4('Reenviar', Colors.blue, 16, FontWeight.w400),
              getBotonTipo4('Rechazar', Colors.red, 16, FontWeight.w400),
            ],
          ),
        ],
      ),
    );
  }

  static Card getCardTipo3() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Asunto del reporte',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  'Espacio: ',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Text(
                  'Mi espacio',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Usuario: ',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Text(
                  'Mi usuario',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Categoría: ',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Text(
                  'Mi categoría',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Descripción',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Euismod quis viverra nibh cras pulvinar. Faucibus a pellentesque sit amet porttitor eget dolor. Consectetur libero id faucibus nisl tincidunt. Nisl tincidunt eget nullam non nisi est sit amet. Sed faucibus turpis in eu mi bibendum neque egestas. Ultricies integer quis auctor elit sed.',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Card getCardTipo4() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
          image: AssetImage('assets/img/foto.jpg'),
        ),
      ),
    );
  }

  static Card getCardTipo5(int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(
              Reportes.enviados[index].asunto,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000912),
                ),
              ),
            ),
            subtitle: Text(
              '${Reportes.enviados[index].descripcion}\nServicios escolares',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            isThreeLine: true,
            leading: Reportes.enviados[index].icono,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              getBotonTipo4('Ver', Colors.blue, 16, FontWeight.w400),
              getBotonTipo4('Editar', Colors.blue, 16, FontWeight.w400),
              getBotonTipo4('Eliminar', Colors.red, 16, FontWeight.w400),
            ],
          ),
        ],
      ),
    );
  }

  static TextStyle getEstilo(double fs, FontWeight fw, Color c) {
    return GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: fs,
        fontWeight: fw,
        color: c,
      ),
    );
  }
}
