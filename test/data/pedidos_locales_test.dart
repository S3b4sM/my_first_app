import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:my_first_app/features/pedidos/data/pedidos_locales.dart';
import 'package:my_first_app/core/json.dart';

const _json = '''[
  {
    "id": "ped-001",
    "cliente": "María Gómez",
    "prenda": "Vestido",
    "costoTotal": 180000,
    "creadoEn": "2026-08-10T14:30:00Z",
    "estado": { "tipo": "entregado", "fechaEntregaReal": "2026-08-14T20:00:00Z" }
  },
  {
    "id": "ped-002",
    "cliente": "Carlos Mendoza",
    "prenda": "Dobladillo",
    "costoTotal": 15000,
    "creadoEn": "2026-08-12T21:15:00Z",
    "estado": { "tipo": "pendiente", "fechaEntregaAcordada": "2026-08-16T22:00:00Z", "abonoInicial": 0 }
  }
]
''';

void main() {
  test('lee la lista completa del archivo simulado', () async {
    final repo = LocalOrders(lector: (_) async => _json);
    expect((await repo.obtenerTodos()).length, 2);
  });

  test('busca por id y devuelve null cuando no está', () async {
    final repo = LocalOrders(lector: (_) async => _json);

    expect((await repo.obtenerPorId('ped-001'))?.cliente, 'María Gómez');
    expect(await repo.obtenerPorId('no-existe'), isNull);
  });

  test('filtra correctamente solo los pedidos pendientes', () async {
    final repo = LocalOrders(lector: (_) async => _json);

    final pendientes = await repo.obtenerPendientes();

    expect(pendientes.length, 1);
    expect(pendientes.first.cliente, 'Carlos Mendoza');
  });

  test('un archivo que no es una lista se rechaza', () async {
    final repo = LocalOrders(lector: (_) async => '{"a": 1}');
    expect(repo.obtenerTodos(), throwsA(isA<CampoInvalido>()));
  });

  test(
    'el asset declarado en pubspec existe y el modelo lo entiende',
    () async {
      TestWidgetsFlutterBinding.ensureInitialized();

      final repo = LocalOrders(lector: rootBundle.loadString);
      expect((await repo.obtenerTodos()).length, greaterThanOrEqualTo(3));
    },
  );
}
