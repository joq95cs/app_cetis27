class Usuario {
  bool existe;
  int? id;
  String? nombre;
  String? apellidoPaterno;
  String? apellidoMaterno;
  int? nivel;
  Usuario(
    this.existe, {
    this.id,
    this.nombre,
    this.apellidoPaterno,
    this.apellidoMaterno,
    this.nivel,
  });
}
