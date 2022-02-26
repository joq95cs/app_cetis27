import 'package:app_cetis27/logica/argumentos.dart';
import 'package:app_cetis27/logica/modelos/categoria.dart';
import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:flutter/material.dart';

class PantallaVistaReporte2 extends StatefulWidget {
  static String ruta = '/pantallaVistaReporte2';
  Function? actualizar;

  @override
  State<PantallaVistaReporte2> createState() => _PantallaVistaReporte2State();
}

class _PantallaVistaReporte2State extends State<PantallaVistaReporte2> {
  @override
  void initState() {
    widget.actualizar = () {
      setState(() {});
    };
  }

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
                height: 300,
                //height: 200,
                child: Componentes.getCardTipo3(),
              ),
              Container(
                //height: 248,
                height: 200,
                child: Componentes.getCardTipo4(),
              ),
            ],
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Componentes.getBotonTipo4('Editar', 11, Colors.green, 18,
                FontWeight.w800, Argumentos.argsReporteActual, Categoria()),
            Componentes.getBotonTipo4('Eliminar', 12, Colors.red, 18,
                FontWeight.w800, Argumentos.argsReporteActual, Categoria()),
          ],
        ),
      ),
    );
  }
}
