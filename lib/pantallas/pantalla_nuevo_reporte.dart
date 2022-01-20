import 'package:app_cetis27/logica/argumentos.dart';
import 'package:app_cetis27/logica/modelos/usuario.dart';
import 'package:app_cetis27/logica/usuario_activo.dart';
import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:flutter/material.dart';

class PantallaNuevoReporte extends StatelessWidget {
  static String ruta = '/pantallaNuevoReporte';
  TextEditingController _controladorAsunto = TextEditingController();
  TextEditingController _controladorDescripcion = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Argumentos.argsNuevoReporte = [_controladorAsunto, _controladorDescripcion];

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: Componentes.getBarraSuperior('Nuevo reporte'),
        body: Container(
          margin: EdgeInsets.only(top: 15.0),
          padding: EdgeInsets.symmetric(horizontal: 10),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Componentes.getCampoTextoTipo1(
                    'Asunto',
                    Icon(Icons.edit),
                    false,
                    _controladorAsunto,
                  ),
                  Componentes.getAreaTexto(_controladorDescripcion),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Componentes.getEtiqueta('Espacio'),
                      Componentes.getDesplegable(
                          ['Biblioteca', 'Cafetería', 'Baños', 'Otro'],
                          'Biblioteca'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Componentes.getEtiqueta('Subespacio'),
                      Componentes.getDesplegable([
                        'Biblioteca principal',
                        'Cafetería principal',
                        'Baños principales',
                        'Otro'
                      ], 'Biblioteca principal'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Componentes.getEtiqueta('Categoría'),
                      Componentes.getDesplegable([
                        'Categoría 1',
                        'Categoría 2',
                        'Categoría 3',
                      ], 'Categoría 1'),
                    ],
                  ),
                  Container(
                    child: Componentes.getBotonTipo2(
                      'Agregar foto',
                      10,
                      Icons.camera_enhance_outlined,
                      180,
                      30,
                      15,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                alignment: Alignment.bottomCenter,
                child: Componentes.getBotonTipo1(
                  'ENVIAR',
                  2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
