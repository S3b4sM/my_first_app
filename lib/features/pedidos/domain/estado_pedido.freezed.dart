// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estado_pedido.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EstadoPedido {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EstadoPedido()';
}


}

/// @nodoc
class $EstadoPedidoCopyWith<$Res>  {
$EstadoPedidoCopyWith(OrderStatus _, $Res Function(OrderStatus) __);
}


/// Adds pattern-matching-related methods to [OrderStatus].
extension EstadoPedidoPatterns on OrderStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Pendiente value)?  pendiente,TResult Function( EnConfeccion value)?  enConfeccion,TResult Function( Terminado value)?  terminado,TResult Function( Entregado value)?  entregado,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Pendiente() when pendiente != null:
return pendiente(_that);case EnConfeccion() when enConfeccion != null:
return enConfeccion(_that);case Terminado() when terminado != null:
return terminado(_that);case Entregado() when entregado != null:
return entregado(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Pendiente value)  pendiente,required TResult Function( EnConfeccion value)  enConfeccion,required TResult Function( Terminado value)  terminado,required TResult Function( Entregado value)  entregado,}){
final _that = this;
switch (_that) {
case Pendiente():
return pendiente(_that);case EnConfeccion():
return enConfeccion(_that);case Terminado():
return terminado(_that);case Entregado():
return entregado(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Pendiente value)?  pendiente,TResult? Function( EnConfeccion value)?  enConfeccion,TResult? Function( Terminado value)?  terminado,TResult? Function( Entregado value)?  entregado,}){
final _that = this;
switch (_that) {
case Pendiente() when pendiente != null:
return pendiente(_that);case EnConfeccion() when enConfeccion != null:
return enConfeccion(_that);case Terminado() when terminado != null:
return terminado(_that);case Entregado() when entregado != null:
return entregado(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DateTime fechaEntregaAcordada,  int abonoInicial)?  pendiente,TResult Function( DateTime fechaInicio,  List<String> materialesAsignados)?  enConfeccion,TResult Function( int saldoPendiente)?  terminado,TResult Function( DateTime fechaEntregaReal)?  entregado,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Pendiente() when pendiente != null:
return pendiente(_that.fechaEntregaAcordada,_that.abonoInicial);case EnConfeccion() when enConfeccion != null:
return enConfeccion(_that.fechaInicio,_that.materialesAsignados);case Terminado() when terminado != null:
return terminado(_that.saldoPendiente);case Entregado() when entregado != null:
return entregado(_that.fechaEntregaReal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DateTime fechaEntregaAcordada,  int abonoInicial)  pendiente,required TResult Function( DateTime fechaInicio,  List<String> materialesAsignados)  enConfeccion,required TResult Function( int saldoPendiente)  terminado,required TResult Function( DateTime fechaEntregaReal)  entregado,}) {final _that = this;
switch (_that) {
case Pendiente():
return pendiente(_that.fechaEntregaAcordada,_that.abonoInicial);case EnConfeccion():
return enConfeccion(_that.fechaInicio,_that.materialesAsignados);case Terminado():
return terminado(_that.saldoPendiente);case Entregado():
return entregado(_that.fechaEntregaReal);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DateTime fechaEntregaAcordada,  int abonoInicial)?  pendiente,TResult? Function( DateTime fechaInicio,  List<String> materialesAsignados)?  enConfeccion,TResult? Function( int saldoPendiente)?  terminado,TResult? Function( DateTime fechaEntregaReal)?  entregado,}) {final _that = this;
switch (_that) {
case Pendiente() when pendiente != null:
return pendiente(_that.fechaEntregaAcordada,_that.abonoInicial);case EnConfeccion() when enConfeccion != null:
return enConfeccion(_that.fechaInicio,_that.materialesAsignados);case Terminado() when terminado != null:
return terminado(_that.saldoPendiente);case Entregado() when entregado != null:
return entregado(_that.fechaEntregaReal);case _:
  return null;

}
}

}

/// @nodoc


class Pendiente extends OrderStatus {
  const Pendiente(this.fechaEntregaAcordada, this.abonoInicial): super._();
  

 final  DateTime fechaEntregaAcordada;
 final  int abonoInicial;

/// Create a copy of EstadoPedido
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendienteCopyWith<Pendiente> get copyWith => _$PendienteCopyWithImpl<Pendiente>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pendiente&&(identical(other.fechaEntregaAcordada, fechaEntregaAcordada) || other.fechaEntregaAcordada == fechaEntregaAcordada)&&(identical(other.abonoInicial, abonoInicial) || other.abonoInicial == abonoInicial));
}


@override
int get hashCode => Object.hash(runtimeType,fechaEntregaAcordada,abonoInicial);

@override
String toString() {
  return 'EstadoPedido.pendiente(fechaEntregaAcordada: $fechaEntregaAcordada, abonoInicial: $abonoInicial)';
}


}

/// @nodoc
abstract mixin class $PendienteCopyWith<$Res> implements $EstadoPedidoCopyWith<$Res> {
  factory $PendienteCopyWith(Pendiente value, $Res Function(Pendiente) _then) = _$PendienteCopyWithImpl;
@useResult
$Res call({
 DateTime fechaEntregaAcordada, int abonoInicial
});




}
/// @nodoc
class _$PendienteCopyWithImpl<$Res>
    implements $PendienteCopyWith<$Res> {
  _$PendienteCopyWithImpl(this._self, this._then);

  final Pendiente _self;
  final $Res Function(Pendiente) _then;

/// Create a copy of EstadoPedido
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fechaEntregaAcordada = null,Object? abonoInicial = null,}) {
  return _then(Pendiente(
null == fechaEntregaAcordada ? _self.fechaEntregaAcordada : fechaEntregaAcordada // ignore: cast_nullable_to_non_nullable
as DateTime,null == abonoInicial ? _self.abonoInicial : abonoInicial // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class EnConfeccion extends OrderStatus {
  const EnConfeccion(this.fechaInicio,  List<String> materialesAsignados): _materialesAsignados = materialesAsignados,super._();
  

 final  DateTime fechaInicio;
 final  List<String> _materialesAsignados;
 List<String> get materialesAsignados {
  if (_materialesAsignados is EqualUnmodifiableListView) return _materialesAsignados;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materialesAsignados);
}


/// Create a copy of EstadoPedido
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnConfeccionCopyWith<EnConfeccion> get copyWith => _$EnConfeccionCopyWithImpl<EnConfeccion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnConfeccion&&(identical(other.fechaInicio, fechaInicio) || other.fechaInicio == fechaInicio)&&const DeepCollectionEquality().equals(other._materialesAsignados, _materialesAsignados));
}


@override
int get hashCode => Object.hash(runtimeType,fechaInicio,const DeepCollectionEquality().hash(_materialesAsignados));

@override
String toString() {
  return 'EstadoPedido.enConfeccion(fechaInicio: $fechaInicio, materialesAsignados: $materialesAsignados)';
}


}

/// @nodoc
abstract mixin class $EnConfeccionCopyWith<$Res> implements $EstadoPedidoCopyWith<$Res> {
  factory $EnConfeccionCopyWith(EnConfeccion value, $Res Function(EnConfeccion) _then) = _$EnConfeccionCopyWithImpl;
@useResult
$Res call({
 DateTime fechaInicio, List<String> materialesAsignados
});




}
/// @nodoc
class _$EnConfeccionCopyWithImpl<$Res>
    implements $EnConfeccionCopyWith<$Res> {
  _$EnConfeccionCopyWithImpl(this._self, this._then);

  final EnConfeccion _self;
  final $Res Function(EnConfeccion) _then;

/// Create a copy of EstadoPedido
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fechaInicio = null,Object? materialesAsignados = null,}) {
  return _then(EnConfeccion(
null == fechaInicio ? _self.fechaInicio : fechaInicio // ignore: cast_nullable_to_non_nullable
as DateTime,null == materialesAsignados ? _self._materialesAsignados : materialesAsignados // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class Terminado extends OrderStatus {
  const Terminado(this.saldoPendiente): super._();
  

 final  int saldoPendiente;

/// Create a copy of EstadoPedido
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TerminadoCopyWith<Terminado> get copyWith => _$TerminadoCopyWithImpl<Terminado>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Terminado&&(identical(other.saldoPendiente, saldoPendiente) || other.saldoPendiente == saldoPendiente));
}


@override
int get hashCode => Object.hash(runtimeType,saldoPendiente);

@override
String toString() {
  return 'EstadoPedido.terminado(saldoPendiente: $saldoPendiente)';
}


}

/// @nodoc
abstract mixin class $TerminadoCopyWith<$Res> implements $EstadoPedidoCopyWith<$Res> {
  factory $TerminadoCopyWith(Terminado value, $Res Function(Terminado) _then) = _$TerminadoCopyWithImpl;
@useResult
$Res call({
 int saldoPendiente
});




}
/// @nodoc
class _$TerminadoCopyWithImpl<$Res>
    implements $TerminadoCopyWith<$Res> {
  _$TerminadoCopyWithImpl(this._self, this._then);

  final Terminado _self;
  final $Res Function(Terminado) _then;

/// Create a copy of EstadoPedido
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? saldoPendiente = null,}) {
  return _then(Terminado(
null == saldoPendiente ? _self.saldoPendiente : saldoPendiente // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Entregado extends OrderStatus {
  const Entregado(this.fechaEntregaReal): super._();
  

 final  DateTime fechaEntregaReal;

/// Create a copy of EstadoPedido
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntregadoCopyWith<Entregado> get copyWith => _$EntregadoCopyWithImpl<Entregado>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Entregado&&(identical(other.fechaEntregaReal, fechaEntregaReal) || other.fechaEntregaReal == fechaEntregaReal));
}


@override
int get hashCode => Object.hash(runtimeType,fechaEntregaReal);

@override
String toString() {
  return 'EstadoPedido.entregado(fechaEntregaReal: $fechaEntregaReal)';
}


}

/// @nodoc
abstract mixin class $EntregadoCopyWith<$Res> implements $EstadoPedidoCopyWith<$Res> {
  factory $EntregadoCopyWith(Entregado value, $Res Function(Entregado) _then) = _$EntregadoCopyWithImpl;
@useResult
$Res call({
 DateTime fechaEntregaReal
});




}
/// @nodoc
class _$EntregadoCopyWithImpl<$Res>
    implements $EntregadoCopyWith<$Res> {
  _$EntregadoCopyWithImpl(this._self, this._then);

  final Entregado _self;
  final $Res Function(Entregado) _then;

/// Create a copy of EstadoPedido
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fechaEntregaReal = null,}) {
  return _then(Entregado(
null == fechaEntregaReal ? _self.fechaEntregaReal : fechaEntregaReal // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
