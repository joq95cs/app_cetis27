import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componentes/componentes.dart';

class PantallaVistaReporte1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: Componentes.getAppBar('Detalle del reporte'),
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
                  Componentes.getBotonTipo4(
                      'Aceptar', Colors.green, 18, FontWeight.w800),
                  Componentes.getBotonTipo4(
                      'Reenviar', Colors.green, 18, FontWeight.w800),
                  Componentes.getBotonTipo4(
                      'Rechazar', Colors.red, 18, FontWeight.w800),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
