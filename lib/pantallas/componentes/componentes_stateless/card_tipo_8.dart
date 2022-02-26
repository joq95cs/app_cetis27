import 'package:app_cetis27/logica/constantes.dart';
import 'package:app_cetis27/logica/modelos/categoria.dart';
import 'package:app_cetis27/logica/modelos/reporte.dart';
import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//CATEGORIAS PENDIENTES
class CardTipo8 extends StatelessWidget {
  Categoria _categoria;

  CardTipo8(this._categoria);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(
              _categoria.nombre as String,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000912),
                ),
              ),
            ),
            subtitle: Text(
              _categoria.descripcion as String,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            leading: Constantes.ICONOS[3],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Componentes.getBotonTipo4('Ver', 1, Colors.blue, 16,
                  FontWeight.w400, Reporte(), Categoria()),
              Componentes.getBotonTipo4('Editar', 2, Colors.blue, 16,
                  FontWeight.w400, Reporte(), Categoria()),
              Componentes.getBotonTipo4('Eliminar', 3, Colors.red, 16,
                  FontWeight.w400, Reporte(), Categoria()),
            ],
          ),
        ],
      ),
    );
  }
}
