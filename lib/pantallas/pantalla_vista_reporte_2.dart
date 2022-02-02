import 'package:app_cetis27/logica/argumentos.dart';
import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:flutter/material.dart';

class PantallaVistaReporte2 extends StatelessWidget {
  static String ruta = '/pantallaVistaReporte2';
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
                //height: 200,
                child: Componentes.getCardTipo3(),
              ),
              Container(
                //height: 248,
                height: 100,
                child: Componentes.getCardTipo4(),
              ),
            ],
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Componentes.getBotonTipo4('Editar', 4, Colors.green, 18,
                FontWeight.w800, Argumentos.argsReporteActual),
            Componentes.getBotonTipo4('Eliminar', 5, Colors.red, 18,
                FontWeight.w800, Argumentos.argsReporteActual),
          ],
        ),
      ),
    );
  }
}
