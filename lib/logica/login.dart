import 'dart:developer';

import 'package:app_cetis27/logica/constantes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'modelos/usuario.dart';

class Login {
  String _username;
  String _password;
  Login(this._username, this._password);
  Future<Usuario> verify() async {
    final respuesta = await http.post(
      Uri.parse('${Constantes.SERVER_URL}/curso_php/cetis_27/login.php'),
      body: {
        'username': _username,
        'password': _password,
      },
    );

    if (respuesta.statusCode == 200) {
      String datos = respuesta.body;
      if (datos != 'error') {
        return Usuario(true,
            nombre: json.decode(datos)[0],
            apellidoPaterno: json.decode(datos)[1],
            apellidoMaterno: json.decode(datos)[2],
            nivel: json.decode(datos)[3]);
      } else {
        return Usuario(false);
      }
    } else {
      return Usuario(false);
    }
  }
}
