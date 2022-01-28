import 'package:app_cetis27/logica/modelos/reporte.dart';
import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:flutter/material.dart';

class PantallaVistaReporte1 extends StatelessWidget {
  static String ruta = '/pantallaVistaReporte1';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: Componentes.getBarraSuperior('Detalle del reporte'),
        body: Container(
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.symmetric(horizontal: 10),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 350,
                child: Componentes.getCardTipo3(),
              ),
              Container(
                height: 248,
                child: Componentes.getCardTipo4(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Componentes.getBotonTipo4('Aceptar', 0, Colors.green, 18,
                      FontWeight.w800, Reporte()),
                  Componentes.getBotonTipo4('Reenviar', 0, Colors.green, 18,
                      FontWeight.w800, Reporte()),
                  Componentes.getBotonTipo4('Rechazar', 0, Colors.red, 18,
                      FontWeight.w800, Reporte()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
