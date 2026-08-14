import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:my_first_app/core/json.dart';
import 'package:my_first_app/features/pedidos/domain/estado_pedido.dart';
import 'package:my_first_app/features/pedidos/domain/medidas.dart';
import 'package:my_first_app/features/pedidos/domain/pedido.dart';

Order ejemplo({OrderStatus? estado, Medidas? medidas}) => Order(
  id: 'ped-001',
  cliente: 'María Gómez',
  prenda: 'Vestido de gala azul',
  costoTotal: 180000,
  creadoEn: DateTime.utc(2026, 8, 10, 14, 30),
  estado: estado ?? Pendiente(DateTime.utc(2026, 8, 16, 22, 0), 50000),
  medidas: medidas,
);

void main() {
  group('serialización', () {
    test('pedido sobrevive la ida y vuelta sin perder nada', () {
      final original = ejemplo(
        estado: EnConfeccion(DateTime.utc(2026, 8, 14, 14, 0), const [
          'Tela Lino',
          'Hilo',
        ]),
        medidas: const Medidas(busto: 92, cintura: 74, cadera: 98, largo: 145),
      );

      final texto = jsonEncode(original.toJson());
      final vuelta = Order.fromJson(jsonDecode(texto) as Map<String, dynamic>);

      expect(vuelta, equals(original));
    });

    test('pedido sin la clave medidas se lee con las medidas en null', () {
      final json = ejemplo().toJson()..remove('medidas');
      expect(Order.fromJson(json).medidas, isNull);
    });

    test('pedido sin cliente dice que campo fallo', () {
      final json = ejemplo().toJson()..remove('cliente');

      expect(
        () => Order.fromJson(json),
        throwsA(
          isA<CampoInvalido>().having((e) => e.campo, 'campo', 'cliente'),
        ),
      );
    });

    test('una fecha invalida se rechaza', () {
      final json = ejemplo().toJson()..['creadoEn'] = '10 de agosto de 2026';
      expect(() => Order.fromJson(json), throwsA(isA<CampoInvalido>()));
    });

    test('la hora se conserva en UTC y no se corre al guardarla', () {
      final json = ejemplo().toJson();
      expect(json['creadoEn'], '2026-08-10T14:30:00.000Z');
    });
  });

  group('igualdad', () {
    test('dos pedidos con los mismos datos son iguales', () {
      expect(ejemplo(), equals(ejemplo()));
    });

    test('dos pedidos con los mismos datos comparten hashCode', () {
      expect(ejemplo().hashCode, equals(ejemplo().hashCode));
      expect({ejemplo(), ejemplo()}.length, 1);
    });

    test('dos pedidos con prendas distintas noson iguales', () {
      final p1 = ejemplo().copyWith(prenda: 'Vestido');
      final p2 = ejemplo().copyWith(prenda: 'Pantalón');
      expect(p1, isNot(equals(p2)));
    });

    test('copyWith cambia solo lo que se le pasa y preserva la identidad', () {
      final original = ejemplo();
      final copia = original.copyWith(cliente: 'Carlos Mendoza');

      expect(copia.cliente, 'Carlos Mendoza');
      expect(copia.id, original.id);
      expect(copia.creadoEn, original.creadoEn);
    });
  });

  group('reglas de negocio', () {
    test('un pedido en confección no se puede editar', () {
      final estadoConfeccion = EnConfeccion(DateTime.utc(2026, 8, 14), const [
        'Tela',
      ]);
      expect(ejemplo(estado: estadoConfeccion).isEditable, isFalse);
    });

    test(
      'un pedido pendiente cuya fecha acordada ya pasó se considera atrasado',
      () {
        final fechaEntrega = DateTime.utc(2026, 8, 16, 22, 0);
        final pedidoPendiente = ejemplo(estado: Pendiente(fechaEntrega, 50000));

        final ahoraFuturo = DateTime.utc(2026, 8, 20);

        expect(pedidoPendiente.isLate(ahoraFuturo), isTrue);
      },
    );

    test('un pedido sin medidas no es de confección completa', () {
      expect(ejemplo(medidas: null).isFullConstruction, isFalse);
    });

    test('un pedido con medidas si es de confección completa', () {
      const medidas = Medidas(largo: 100);
      expect(ejemplo(medidas: medidas).isFullConstruction, isTrue);
    });
  });
}
