import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_first_app/core/json.dart';

part 'estado_pedido.freezed.dart';

@Freezed(fromJson: false, toJson: false)
sealed class OrderStatus with _$EstadoPedido {
  const factory OrderStatus.pendiente(
    DateTime fechaEntregaAcordada,
    int abonoInicial,
  ) = Pendiente;
  const factory OrderStatus.enConfeccion(
    DateTime fechaInicio,
    List<String> materialesAsignados,
  ) = EnConfeccion;
  const factory OrderStatus.terminado(int saldoPendiente) = Terminado;
  const factory OrderStatus.entregado(DateTime fechaEntregaReal) = Entregado;

  const OrderStatus._();

  factory OrderStatus.fromJson(Map<String, dynamic> json) {
    final tipo = leerTexto(json, 'tipo');
    return switch (tipo) {
      'pendiente' => Pendiente(
        leerFecha(json, 'fechaEntregaAcordada'),
        leerEntero(json, 'abonoInicial'),
      ),
      'en_confeccion' => EnConfeccion(
        leerFecha(json, 'fechaInicio'),
        leerTextos(json, 'materialesAsignados'),
      ),
      'terminado' => Terminado(leerEntero(json, 'saldoPendiente')),
      'entregado' => Entregado(leerFecha(json, 'fechaEntregaReal')),
      _ => throw CampoInvalido('estado.tipo', 'no es un estado conocido', tipo),
    };
  }

  Map<String, dynamic> toJson() => switch (this) {
    Pendiente(:final fechaEntregaAcordada, :final abonoInicial) => {
      'tipo': 'pendiente',
      'fechaEntregaAcordada': fechaEntregaAcordada.toIso8601String(),
      'abonoInicial': abonoInicial,
    },
    EnConfeccion(:final fechaInicio, :final materialesAsignados) => {
      'tipo': 'en_confeccion',
      'fechaInicio': fechaInicio.toIso8601String(),
      'materialesAsignados': materialesAsignados,
    },
    Terminado(:final saldoPendiente) => {
      'tipo': 'terminado',
      'saldoPendiente': saldoPendiente,
    },
    Entregado(:final fechaEntregaReal) => {
      'tipo': 'entregado',
      'fechaEntregaReal': fechaEntregaReal.toIso8601String(),
    },
  };

  /// Regla 2: Un pedido solo se puede editar si su estado lo permite
  bool get isEditable => switch (this) {
    Pendiente() => true,
    EnConfeccion() || Terminado() || Entregado() => false,
  };

  String get etiqueta => switch (this) {
    Pendiente() => 'Pendiente',
    EnConfeccion() => 'En confección',
    Terminado() => 'Terminado (Listo para entrega)',
    Entregado() => 'Entregado al cliente',
  };
}
