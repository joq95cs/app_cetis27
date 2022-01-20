import 'dart:developer';

import 'package:app_cetis27/logica/modelos/reporte.dart';
import 'package:app_cetis27/logica/reportes_enviados.dart';
import 'package:app_cetis27/logica/usuario_activo.dart';
import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:app_cetis27/pantallas/temporal/reportes.dart';
import 'package:flutter/material.dart';

class PantallaReportesEnviados2 extends StatelessWidget {
  static String ruta = '/pantallaReportesEnviados2';

  @override
  Widget build(BuildContext context) {
    log(ReportesEnviados.reportesEnviados.length.toString());
    log(ReportesEnviados.reportesEnviados[5].asunto.toString());
    return SafeArea(
      child: Scaffold(
        appBar: Componentes.getBarraSuperior('Reportes enviados'),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Componentes.getCardTipo5(
                      index, ReportesEnviados.reportesEnviados[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
