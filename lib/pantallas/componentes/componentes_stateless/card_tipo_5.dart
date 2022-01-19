import 'package:app_cetis27/pantallas/componentes/componentes.dart';
import 'package:app_cetis27/pantallas/temporal/reportes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTipo5 extends StatelessWidget {
  int _index;
  CardTipo5(this._index);
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
              Reportes.enviados[_index].asunto,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000912),
                ),
              ),
            ),
            subtitle: Text(
              '${Reportes.enviados[_index].descripcion}\nServicios escolares',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            isThreeLine: true,
            leading: Reportes.enviados[_index].icono,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Componentes.getBotonTipo4(
                  'Ver', Colors.blue, 16, FontWeight.w400),
              Componentes.getBotonTipo4(
                  'Editar', Colors.blue, 16, FontWeight.w400),
              Componentes.getBotonTipo4(
                  'Eliminar', Colors.red, 16, FontWeight.w400),
            ],
          ),
        ],
      ),
    );
  }
}
