import 'dart:developer';

import 'package:app_cetis27/logica/constantes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Login {
  String _username;
  String _password;
  Login(this._username, this._password);
  Future<int> verify() async {
    final respuesta = await http.post(
      Uri.parse('${Constantes.SERVER_URL}/curso_php/cetis_27/login.php'),
      body: {
        'username': _username,
        'password': _password,
      },
    );

    if (respuesta.statusCode == 200) {
      var datos = respuesta.body;
      if (datos.toString() != 'error') {
        log(json.decode(datos).toString());
        return json.decode(datos)['nivel'];
      } else {
        log('Usuario o contraseña incorrectos');
        return 0;
      }
    } else {
      return 0;
    }
  }
}
