import 'package:my_first_app/features/pedidos/domain/pedido.dart';

abstract interface class PedidosRepository {
  Future<List<Order>> obtenerTodos();

  Future<Order?> obtenerPorId(String id);

  Future<List<Order>> obtenerPendientes();
}
