import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'componentes/componentes.dart';
import 'temporal/reportes.dart';

class PantallaReportesRecibidos1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Componentes.getAppBar('Reportes recibidos'),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Componentes.getDesplegable(
                    ['Departamento', 'Todos'], 'Departamento'),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Reportes.recibidos.length,
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
