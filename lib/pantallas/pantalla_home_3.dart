import 'package:app_cetis27/logica/modelos/usuario.dart';
import 'package:app_cetis27/logica/usuario_activo.dart';
import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:flutter/material.dart';

class PantallaHome3 extends StatelessWidget {
  //ENCARGADO NO JEFE
  static String ruta = '/pantallaHome3';
  @override
  Widget build(BuildContext context) {
    //USUARIO TEMPORAL
    /*UsuarioActivo.usuario = Usuario(
      true,
      id: 18,
      nombre: 'Armenia',
      apellidoPaterno: 'Ávila',
      apellidoMaterno: 'Tapia',
      nivel: 4,
      curp: 'CURP',
      tipo: 3,
    );*/

    UsuarioActivo.usuario = Usuario(
      true,
      id: 19,
      nombre: 'Fanny',
      apellidoPaterno: 'Tapia',
      apellidoMaterno: 'Orozco',
      nivel: 4,
      curp: 'CURP',
      tipo: 3,
    );
    return SafeArea(
      child: Scaffold(
        appBar: Componentes.getBarraSuperior(
            'Bienvenido(a): ${UsuarioActivo.usuario.nombre}'),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //:padding: EdgeInsets.symmetric(horizontal: 40),
              color: Color(0xFFfafafa),
              //color: Colors.orange,
              //width: double.infinity,
              width: 300,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Componentes.getBotonTipo2(
                        'Nuevo reporte',
                        1,
                        Icons.description,
                        300,
                        50,
                        20,
                      ),
                      Componentes.getBotonTipo2(
                        'Reportes recibidos', //Categoría por defecto
                        2,
                        Icons.report,
                        300,
                        50,
                        20,
                      ),
                      Componentes.getBotonTipo2(
                        'Reportes enviados',
                        3,
                        Icons.history,
                        300,
                        50,
                        20,
                      ),
                      Componentes.getBotonTipo2(
                        'Categorías pendientes', //El encargado del espacio debe aprobarlas o rechazarlas
                        4,
                        Icons.category,
                        300,
                        50,
                        20,
                      ),
                      Componentes.getBotonTipo2(
                        'Crear categoría',
                        5,
                        Icons.category,
                        300,
                        50,
                        20,
                      ),
                      Componentes.getBotonTipo2(
                        'Ver categorías', //Categorías del espacio del cuál es encargado
                        6,
                        Icons.category,
                        300,
                        50,
                        20,
                      ),
                      Componentes.getBotonTipo2(
                        'Ver estadísticas', //De su espacio
                        7,
                        Icons.bar_chart,
                        300,
                        50,
                        20,
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Componentes.getBotonTipo3('Cerrar sesión'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
