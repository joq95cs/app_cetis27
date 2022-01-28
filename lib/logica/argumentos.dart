import 'package:app_cetis27/logica/modelos/reporte.dart';

class Argumentos {
  static List<dynamic> argsLogin = [];
  static List<dynamic> argsNuevoReporte = [];
  static List<dynamic> argsNuevaCategoria = [];
  static Reporte argsReporteActual = Reporte();

  static limpiar() {
    argsLogin = [];
    argsNuevoReporte = [];
    argsNuevaCategoria = [];
    argsReporteActual = Reporte();
  }
}
