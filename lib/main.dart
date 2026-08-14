import 'package:flutter/material.dart';
import 'package:my_first_app/features/pedidos/data/pedidos_locales.dart';
import 'package:my_first_app/features/pedidos/domain/pedido.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Sastrería - Pedidos',
    theme: ThemeData(colorSchemeSeed: Colors.indigo),
    home: const PantallaPedidos(),
  );
}

class PantallaPedidos extends StatefulWidget {
  const PantallaPedidos({super.key});

  @override
  State<PantallaPedidos> createState() => _PantallaPedidosState();
}

class _PantallaPedidosState extends State<PantallaPedidos> {
  late final Future<List<Order>> _pedidos = LocalOrders().obtenerTodos();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Pedidos de la Sastrería')),
    body: FutureBuilder<List<Order>>(
      future: _pedidos,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('No se pudo leer:\n${snapshot.error}'));
        }

        final pedidos = snapshot.data ?? const <Order>[];
        return ListView.separated(
          itemCount: pedidos.length,
          separatorBuilder: (_, _) => const Divider(height: 1),
          itemBuilder: (context, i) {
            final pedido = pedidos[i];
            return ListTile(
              title: Text('${pedido.prenda} - ${pedido.cliente}'),
              subtitle: Text(
                'Costo: \$${pedido.costoTotal} · Estado: ${pedido.estado.etiqueta}',
              ),
              trailing: pedido.isFullConstruction
                  ? const Icon(Icons.straighten)
                  : const Icon(Icons.checkroom),
            );
          },
        );
      },
    ),
  );
}
