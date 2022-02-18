import 'dart:developer';

import 'package:app_cetis27/logica/constantes.dart';
import 'package:app_cetis27/logica/modelos/espacio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CargarEspacios {
  Future<List<Espacio>> obtener() async {
    var respuesta = await http.get(
      Uri.parse('${Constantes.SERVER_URL}/curso_php/cetis_27/get_spaces.php'),
    );

    if (respuesta.statusCode == 200) {
      if (respuesta.body != '"error"') {
        var registros = jsonDecode(respuesta.body);

        List<Espacio> espacios = [];
        for (int i = 0; i < registros.length; i++) {
          espacios.add(
            Espacio(
              id: registros[i]['id_espacio'],
              nombre: registros[i]['nombre'],
              encargado: registros[i]['encargado'],
              tipo: registros[i]['tipo'],
            ),
          );
        }
        return espacios;
      } else {
        return [];
      }
    } else {
      throw Exception();
    }
  }
}
