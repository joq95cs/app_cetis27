import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:app_cetis27/pantallas/temporal/reportes.dart';
import 'package:flutter/material.dart';

class PantallaReportesEnviados2 extends StatelessWidget {
  static String ruta = '/pantallaReportesEnviados2';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Componentes.getBarraSuperior('Reportes enviados'),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: Reportes.enviados.length,
                itemBuilder: (context, index) {
                  return Componentes.getCardTipo1(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
