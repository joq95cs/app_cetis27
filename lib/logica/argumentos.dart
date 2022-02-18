import 'package:app_cetis27/logica/modelos/espacio.dart';
import 'package:app_cetis27/logica/modelos/reporte.dart';

class Argumentos {
  static List<dynamic> argsLogin = [];
  static List<dynamic> argsNuevoReporte = [];
  static List<dynamic> argsNuevaCategoria = [];
  static Reporte argsReporteActual = Reporte();
  static Espacio espacioActual = Espacio();
  static List<Espacio> argsEspacios = [];
  static List<Espacio> argsSubespacios = [];

  static limpiar() {
    argsLogin = [];
    argsNuevoReporte = [];
    argsNuevaCategoria = [];
    argsReporteActual = Reporte();
  }
}
