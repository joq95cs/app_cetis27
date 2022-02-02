import 'package:app_cetis27/logica/constantes.dart';
import 'package:app_cetis27/logica/modelos/reporte.dart';
import 'package:http/http.dart' as http;

class NuevoReporte {
  Reporte _reporte;

  NuevoReporte(this._reporte);

  Future<int> agregar() async {
    var respuesta = await http.post(
      Uri.parse('${Constantes.SERVER_URL}/curso_php/cetis_27/new_report.php'),
      body: {
        'asunto': _reporte.asunto,
        'descripcion': _reporte.descripcion,
        'foto': _reporte.foto,
        'usuario': _reporte.usuario.toString(),
        'categoria': _reporte.categoria.toString(),
        'espacio': _reporte.espacio.toString(),
        'estatus': _reporte.estatus,
      },
    );

    if (respuesta.statusCode == 200) {
      String datos = respuesta.body;

      if (datos != '"error"') {
        return 0;
      } else {
        return 1;
      }
    } else {
      return 1;
    }
  }
}
