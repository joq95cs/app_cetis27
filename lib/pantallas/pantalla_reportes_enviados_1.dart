import 'package:app_cetis27/pantallas/temporal/reportes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'componentes/componentes.dart';

class PantallaReportesEnviados1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Componentes.getAppBar('Reportes enviados'),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Componentes.getDesplegable(
                    ['Propios', 'Departamento', 'Todos'], 'Propios'),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Reportes.enviados.length,
                itemBuilder: (context, index) {
                  return Componentes.getCardTipo5(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
