import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:app_cetis27/pantallas/temporal/reportes.dart';
import 'package:flutter/material.dart';

class PantallaReportesRecibidos2 extends StatelessWidget {
  static String ruta = '/pantallaReportesRecibidos2';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Componentes.getBarraSuperior('Reportes recibidos'),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: Reportes.recibidos.length,
                itemBuilder: (context, index) {
                  return Componentes.getCardTipo2(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
