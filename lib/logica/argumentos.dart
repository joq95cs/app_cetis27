import 'package:app_cetis27/logica/modelos/categoria.dart';
import 'package:app_cetis27/logica/modelos/espacio.dart';
import 'package:app_cetis27/logica/modelos/reporte.dart';
import 'package:image_picker/image_picker.dart';

class Argumentos {
  static List<dynamic> argsLogin = [];
  static List<dynamic> argsNuevoReporte = [];
  static List<dynamic> argsNuevaCategoria = [];
  static List<Espacio> argsEspacios = [];
  static List<Espacio> argsSubespacios = [];
  static List<Categoria> argsCategorias = [];
  static List<Categoria> argsCategoriasEspacio = [];
  static Reporte argsReporteActual = Reporte();
  static Espacio argsEspacioSeleccionado = Espacio();
  static Categoria argsCategoriaSeleccionada = Categoria();
  static Categoria argsCategoriaActual = Categoria();
  static XFile? argsFotoSeleccionada;

  static limpiar() {
    argsLogin = [];
    argsNuevoReporte = [];
    argsNuevaCategoria = [];
    argsEspacios = [];
    argsSubespacios = [];
    argsCategorias = [];
    argsCategoriasEspacio = [];
    argsReporteActual = Reporte();
    argsEspacioSeleccionado = Espacio();
    argsCategoriaSeleccionada = Categoria();
    argsCategoriaActual = Categoria();
  }
}
