class Usuario {
  bool existe;
  String? nombre;
  String? apellidoPaterno;
  String? apellidoMaterno;
  int? nivel;
  Usuario(
    this.existe, {
    this.nombre,
    this.apellidoPaterno,
    this.apellidoMaterno,
    this.nivel,
  });
}
