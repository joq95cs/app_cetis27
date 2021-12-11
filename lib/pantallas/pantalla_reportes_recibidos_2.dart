import 'package:flutter/material.dart';
import 'componentes/componentes.dart';
import 'temporal/reportes.dart';

class PantallaReportesRecibidos2 extends StatelessWidget {
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
