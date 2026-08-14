import 'package:my_first_app/core/json.dart';

class Medidas {
  const Medidas({this.busto, this.cintura, this.cadera, this.largo})
    : assert(busto == null || busto > 0, 'El busto debe ser mayor a cero'),
      assert(
        cintura == null || cintura > 0,
        'La cintura debe ser mayor a cero',
      ),
      assert(cadera == null || cadera > 0, 'La cadera debe ser mayor a cero'),
      assert(largo == null || largo > 0, 'El largo debe ser mayor a cero');

  /// Regla 1: Verifica si el pedido requiere medidas o si es un arreglo simple
  factory Medidas.fromJson(Map<String, dynamic> json) => Medidas(
    busto: json['busto'] != null ? leerDecimal(json, 'busto') : null,
    cintura: json['cintura'] != null ? leerDecimal(json, 'cintura') : null,
    cadera: json['cadera'] != null ? leerDecimal(json, 'cadera') : null,
    largo: json['largo'] != null ? leerDecimal(json, 'largo') : null,
  );

  final double? busto;
  final double? cintura;
  final double? cadera;
  final double? largo;

  Map<String, dynamic> toJson() => {
    if (busto != null) 'busto': busto,
    if (cintura != null) 'cintura': cintura,
    if (cadera != null) 'cadera': cadera,
    if (largo != null) 'largo': largo,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Medidas &&
          other.busto == busto &&
          other.cintura == cintura &&
          other.cadera == cadera &&
          other.largo == largo;

  @override
  int get hashCode => Object.hash(busto, cintura, cadera, largo);

  @override
  String toString() {
    return 'Medidas(busto: $busto, cintura: $cintura, cadera: $cadera, largo: $largo)';
  }
}
