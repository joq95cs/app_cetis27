import 'package:app_cetis27/logica/argumentos.dart';
import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:flutter/material.dart';

class PantallaNuevaCategoria extends StatelessWidget {
  static String ruta = '/pantallaNuevaCategoria';
  TextEditingController _controladorNombre = TextEditingController();
  TextEditingController _controladorDescripcion = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Argumentos.argsNuevaCategoria = [
      _controladorNombre,
      _controladorDescripcion
    ];

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: Componentes.getBarraSuperior('Nueva categoría'),
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
                    'Nombre',
                    Icon(Icons.edit),
                    false,
                    _controladorNombre,
                  ),
                  Componentes.getAreaTexto(
                    _controladorDescripcion,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Componentes.getEtiqueta('Espacio'),
                      Componentes.getDesplegable(
                        ['Biblioteca', 'Cafetería', 'Baños', 'Otro'],
                        'Biblioteca',
                      ),
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
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                alignment: Alignment.bottomCenter,
                child: Componentes.getBotonTipo1('ENVIAR', 3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
