import 'package:flutter/material.dart';

import 'componentes/componentes.dart';

class PantallaLogin extends StatelessWidget {
  TextEditingController _controladorUser = TextEditingController();
  TextEditingController _controladorPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Componentes.getLogo(),
              Componentes.getCampoTextoTipo1(
                'Usuario',
                Icon(Icons.person_outline),
                false,
                _controladorUser,
              ),
              Componentes.getCampoTextoTipo1(
                'Contraseña',
                Icon(Icons.lock_outline),
                false,
                _controladorPass,
              ),
              Componentes.getBotonTipo1(
                  'INICIAR SESIÓN', [_controladorUser, _controladorPass], 1),
            ],
          ),
        ),
      ),
    );
  }
}
