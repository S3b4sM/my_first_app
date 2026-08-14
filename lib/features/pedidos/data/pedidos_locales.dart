import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:my_first_app/core/json.dart';
import 'package:my_first_app/features/pedidos/domain/estado_pedido.dart';
import 'package:my_first_app/features/pedidos/domain/pedido.dart';
import 'package:my_first_app/features/pedidos/domain/pedidos_repository.dart';

typedef LectorDeAssets = Future<String> Function(String ruta);

class LocalOrders implements PedidosRepository {
  LocalOrders({LectorDeAssets? lector, this.ruta = 'assets/data/pedidos.json'})
    : _lector = lector ?? rootBundle.loadString;

  final LectorDeAssets _lector;
  final String ruta;

  List<Order>? _cache;

  @override
  Future<List<Order>> obtenerTodos() async {
    final guardado = _cache;
    if (guardado != null) return guardado;

    final crudo = await _lector(ruta);
    final decodificado = jsonDecode(crudo);

    if (decodificado is! List) {
      throw const CampoInvalido(
        '(raíz)',
        'el archivo debe contener una lista',
        null,
      );
    }

    return _cache = decodificado
        .map((e) => Order.fromJson(e as Map<String, dynamic>))
        .toList(growable: false);
  }

  @override
  Future<Order?> obtenerPorId(String id) async {
    for (final pedido in await obtenerTodos()) {
      if (pedido.id == id) return pedido;
    }
    return null;
  }

  @override
  Future<List<Order>> obtenerPendientes() async {
    final todos = await obtenerTodos();
    return todos.where((p) => p.estado is Pendiente).toList();
  }
}
