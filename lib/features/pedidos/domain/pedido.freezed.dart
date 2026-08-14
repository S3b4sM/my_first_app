// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Pedido {

 String get id; String get cliente; String get prenda; int get costoTotal; DateTime get creadoEn; OrderStatus get estado; Medidas? get medidas;
/// Create a copy of Pedido
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoCopyWith<Order> get copyWith => _$PedidoCopyWithImpl<Order>(this as Order, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.cliente, cliente) || other.cliente == cliente)&&(identical(other.prenda, prenda) || other.prenda == prenda)&&(identical(other.costoTotal, costoTotal) || other.costoTotal == costoTotal)&&(identical(other.creadoEn, creadoEn) || other.creadoEn == creadoEn)&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.medidas, medidas) || other.medidas == medidas));
}


@override
int get hashCode => Object.hash(runtimeType,id,cliente,prenda,costoTotal,creadoEn,estado,medidas);

@override
String toString() {
  return 'Pedido(id: $id, cliente: $cliente, prenda: $prenda, costoTotal: $costoTotal, creadoEn: $creadoEn, estado: $estado, medidas: $medidas)';
}


}

/// @nodoc
abstract mixin class $PedidoCopyWith<$Res>  {
  factory $PedidoCopyWith(Order value, $Res Function(Order) _then) = _$PedidoCopyWithImpl;
@useResult
$Res call({
 String id, String cliente, String prenda, int costoTotal, DateTime creadoEn, OrderStatus estado, Medidas? medidas
});


$EstadoPedidoCopyWith<$Res> get estado;

}
/// @nodoc
class _$PedidoCopyWithImpl<$Res>
    implements $PedidoCopyWith<$Res> {
  _$PedidoCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Pedido
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? cliente = null,Object? prenda = null,Object? costoTotal = null,Object? creadoEn = null,Object? estado = null,Object? medidas = freezed,}) {
  return _then(Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,cliente: null == cliente ? _self.cliente : cliente // ignore: cast_nullable_to_non_nullable
as String,prenda: null == prenda ? _self.prenda : prenda // ignore: cast_nullable_to_non_nullable
as String,costoTotal: null == costoTotal ? _self.costoTotal : costoTotal // ignore: cast_nullable_to_non_nullable
as int,creadoEn: null == creadoEn ? _self.creadoEn : creadoEn // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as OrderStatus,medidas: freezed == medidas ? _self.medidas : medidas // ignore: cast_nullable_to_non_nullable
as Medidas?,
  ));
}
/// Create a copy of Pedido
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EstadoPedidoCopyWith<$Res> get estado {
  
  return $EstadoPedidoCopyWith<$Res>(_self.estado, (value) {
    return _then(_self.copyWith(estado: value));
  });
}
}


/// Adds pattern-matching-related methods to [Order].
extension PedidoPatterns on Order {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pedido value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pedido() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pedido value)  $default,){
final _that = this;
switch (_that) {
case _Pedido():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pedido value)?  $default,){
final _that = this;
switch (_that) {
case _Pedido() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String cliente,  String prenda,  int costoTotal,  DateTime creadoEn,  OrderStatus estado,  Medidas? medidas)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pedido() when $default != null:
return $default(_that.id,_that.cliente,_that.prenda,_that.costoTotal,_that.creadoEn,_that.estado,_that.medidas);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String cliente,  String prenda,  int costoTotal,  DateTime creadoEn,  OrderStatus estado,  Medidas? medidas)  $default,) {final _that = this;
switch (_that) {
case _Pedido():
return $default(_that.id,_that.cliente,_that.prenda,_that.costoTotal,_that.creadoEn,_that.estado,_that.medidas);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String cliente,  String prenda,  int costoTotal,  DateTime creadoEn,  OrderStatus estado,  Medidas? medidas)?  $default,) {final _that = this;
switch (_that) {
case _Pedido() when $default != null:
return $default(_that.id,_that.cliente,_that.prenda,_that.costoTotal,_that.creadoEn,_that.estado,_that.medidas);case _:
  return null;

}
}

}

/// @nodoc


class _Pedido extends Order {
  const _Pedido({required this.id, required this.cliente, required this.prenda, required this.costoTotal, required this.creadoEn, required this.estado, this.medidas}): super._();
  

@override final  String id;
@override final  String cliente;
@override final  String prenda;
@override final  int costoTotal;
@override final  DateTime creadoEn;
@override final  OrderStatus estado;
@override final  Medidas? medidas;

/// Create a copy of Pedido
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoCopyWith<_Pedido> get copyWith => __$PedidoCopyWithImpl<_Pedido>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pedido&&(identical(other.id, id) || other.id == id)&&(identical(other.cliente, cliente) || other.cliente == cliente)&&(identical(other.prenda, prenda) || other.prenda == prenda)&&(identical(other.costoTotal, costoTotal) || other.costoTotal == costoTotal)&&(identical(other.creadoEn, creadoEn) || other.creadoEn == creadoEn)&&(identical(other.estado, estado) || other.estado == estado)&&(identical(other.medidas, medidas) || other.medidas == medidas));
}


@override
int get hashCode => Object.hash(runtimeType,id,cliente,prenda,costoTotal,creadoEn,estado,medidas);

@override
String toString() {
  return 'Pedido(id: $id, cliente: $cliente, prenda: $prenda, costoTotal: $costoTotal, creadoEn: $creadoEn, estado: $estado, medidas: $medidas)';
}


}

/// @nodoc
abstract mixin class _$PedidoCopyWith<$Res> implements $PedidoCopyWith<$Res> {
  factory _$PedidoCopyWith(_Pedido value, $Res Function(_Pedido) _then) = __$PedidoCopyWithImpl;
@override @useResult
$Res call({
 String id, String cliente, String prenda, int costoTotal, DateTime creadoEn, OrderStatus estado, Medidas? medidas
});


@override $EstadoPedidoCopyWith<$Res> get estado;

}
/// @nodoc
class __$PedidoCopyWithImpl<$Res>
    implements _$PedidoCopyWith<$Res> {
  __$PedidoCopyWithImpl(this._self, this._then);

  final _Pedido _self;
  final $Res Function(_Pedido) _then;

/// Create a copy of Pedido
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? cliente = null,Object? prenda = null,Object? costoTotal = null,Object? creadoEn = null,Object? estado = null,Object? medidas = freezed,}) {
  return _then(_Pedido(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,cliente: null == cliente ? _self.cliente : cliente // ignore: cast_nullable_to_non_nullable
as String,prenda: null == prenda ? _self.prenda : prenda // ignore: cast_nullable_to_non_nullable
as String,costoTotal: null == costoTotal ? _self.costoTotal : costoTotal // ignore: cast_nullable_to_non_nullable
as int,creadoEn: null == creadoEn ? _self.creadoEn : creadoEn // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as OrderStatus,medidas: freezed == medidas ? _self.medidas : medidas // ignore: cast_nullable_to_non_nullable
as Medidas?,
  ));
}

/// Create a copy of Pedido
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EstadoPedidoCopyWith<$Res> get estado {
  
  return $EstadoPedidoCopyWith<$Res>(_self.estado, (value) {
    return _then(_self.copyWith(estado: value));
  });
}
}

// dart format on
