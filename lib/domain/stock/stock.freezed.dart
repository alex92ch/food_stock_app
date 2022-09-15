// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Stock {
  String get id => throw _privateConstructorUsedError;
  Map<String, int> get cupboard => throw _privateConstructorUsedError;
  Map<String, int> get freezer => throw _privateConstructorUsedError;
  Map<String, int> get fridge => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockCopyWith<Stock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockCopyWith<$Res> {
  factory $StockCopyWith(Stock value, $Res Function(Stock) then) =
      _$StockCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Map<String, int> cupboard,
      Map<String, int> freezer,
      Map<String, int> fridge});
}

/// @nodoc
class _$StockCopyWithImpl<$Res> implements $StockCopyWith<$Res> {
  _$StockCopyWithImpl(this._value, this._then);

  final Stock _value;
  // ignore: unused_field
  final $Res Function(Stock) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cupboard = freezed,
    Object? freezer = freezed,
    Object? fridge = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cupboard: cupboard == freezed
          ? _value.cupboard
          : cupboard // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      freezer: freezer == freezed
          ? _value.freezer
          : freezer // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      fridge: fridge == freezed
          ? _value.fridge
          : fridge // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_StockCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$$_StockCopyWith(_$_Stock value, $Res Function(_$_Stock) then) =
      __$$_StockCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Map<String, int> cupboard,
      Map<String, int> freezer,
      Map<String, int> fridge});
}

/// @nodoc
class __$$_StockCopyWithImpl<$Res> extends _$StockCopyWithImpl<$Res>
    implements _$$_StockCopyWith<$Res> {
  __$$_StockCopyWithImpl(_$_Stock _value, $Res Function(_$_Stock) _then)
      : super(_value, (v) => _then(v as _$_Stock));

  @override
  _$_Stock get _value => super._value as _$_Stock;

  @override
  $Res call({
    Object? id = freezed,
    Object? cupboard = freezed,
    Object? freezer = freezed,
    Object? fridge = freezed,
  }) {
    return _then(_$_Stock(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cupboard: cupboard == freezed
          ? _value._cupboard
          : cupboard // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      freezer: freezer == freezed
          ? _value._freezer
          : freezer // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      fridge: fridge == freezed
          ? _value._fridge
          : fridge // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _$_Stock extends _Stock {
  const _$_Stock(
      {this.id = '',
      final Map<String, int> cupboard = const {},
      final Map<String, int> freezer = const {},
      final Map<String, int> fridge = const {}})
      : _cupboard = cupboard,
        _freezer = freezer,
        _fridge = fridge,
        super._();

  @override
  @JsonKey()
  final String id;
  final Map<String, int> _cupboard;
  @override
  @JsonKey()
  Map<String, int> get cupboard {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cupboard);
  }

  final Map<String, int> _freezer;
  @override
  @JsonKey()
  Map<String, int> get freezer {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_freezer);
  }

  final Map<String, int> _fridge;
  @override
  @JsonKey()
  Map<String, int> get fridge {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fridge);
  }

  @override
  String toString() {
    return 'Stock(id: $id, cupboard: $cupboard, freezer: $freezer, fridge: $fridge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stock &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._cupboard, _cupboard) &&
            const DeepCollectionEquality().equals(other._freezer, _freezer) &&
            const DeepCollectionEquality().equals(other._fridge, _fridge));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_cupboard),
      const DeepCollectionEquality().hash(_freezer),
      const DeepCollectionEquality().hash(_fridge));

  @JsonKey(ignore: true)
  @override
  _$$_StockCopyWith<_$_Stock> get copyWith =>
      __$$_StockCopyWithImpl<_$_Stock>(this, _$identity);
}

abstract class _Stock extends Stock {
  const factory _Stock(
      {final String id,
      final Map<String, int> cupboard,
      final Map<String, int> freezer,
      final Map<String, int> fridge}) = _$_Stock;
  const _Stock._() : super._();

  @override
  String get id;
  @override
  Map<String, int> get cupboard;
  @override
  Map<String, int> get freezer;
  @override
  Map<String, int> get fridge;
  @override
  @JsonKey(ignore: true)
  _$$_StockCopyWith<_$_Stock> get copyWith =>
      throw _privateConstructorUsedError;
}
