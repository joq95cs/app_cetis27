import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componentes/componentes.dart';

class PantallaNuevaCategoria extends StatelessWidget {
  TextEditingController _controladorNombre = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                      'Nombre', Icon(Icons.edit), false, _controladorNombre),
                  Componentes.getAreaTexto(),
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
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                alignment: Alignment.bottomCenter,
                child: Componentes.getBotonTipo1('ENVIAR', [], 0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
