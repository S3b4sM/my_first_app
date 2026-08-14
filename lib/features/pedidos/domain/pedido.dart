import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_first_app/core/json.dart';
import 'package:my_first_app/features/pedidos/domain/estado_pedido.dart';
import 'package:my_first_app/features/pedidos/domain/medidas.dart';

part 'pedido.freezed.dart';

/// Una orden de trabajo en la sastrería
/// Es una entidad tiene identidad propia. Dos pedidos de la misma prenda
/// para el mismo cliente son distintos si tienen id distinto.
@Freezed(fromJson: false, toJson: false)
abstract class Order with _$Pedido {
  const factory Order({
    required String id,
    required String cliente,
    required String prenda,
    required int costoTotal,
    required DateTime creadoEn,
    required OrderStatus estado,
    Medidas? medidas,
  }) = _Pedido;

  /// Constructor privado obligatorio para poder añadir métodos propios en Freezed
  const Order._();

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    id: leerTexto(json, 'id'),
    cliente: leerTexto(json, 'cliente'),
    prenda: leerTexto(json, 'prenda'),
    costoTotal: leerEntero(json, 'costoTotal'),
    creadoEn: leerFecha(json, 'creadoEn'),
    estado: OrderStatus.fromJson(leerMapa(json, 'estado')),
    medidas: json['medidas'] != null
        ? Medidas.fromJson(leerMapa(json, 'medidas'))
        : null,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'cliente': cliente,
    'prenda': prenda,
    'costoTotal': costoTotal,
    'creadoEn': creadoEn.toUtc().toIso8601String(),
    'estado': estado.toJson(),
    if (medidas != null) 'medidas': medidas!.toJson(),
  };

  bool get isFullConstruction => medidas != null;

  bool get isEditable => estado.isEditable;

  Duration antiguedad(DateTime ahora) => ahora.difference(creadoEn);

  /// Regla 3: Un pedido está atrasado solo si sigue pendiente y ya pasó su fecha acordada
  bool isLate(DateTime ahora) {
    final estadoActual = estado;
    if (estadoActual is Pendiente) {
      return ahora.isAfter(estadoActual.fechaEntregaAcordada);
    }
    return false;
  }
}
