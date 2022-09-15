// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockDTO _$StockDTOFromJson(Map<String, dynamic> json) {
  return _StockDTO.fromJson(json);
}

/// @nodoc
mixin _$StockDTO {
  String get id => throw _privateConstructorUsedError;
  Map<String, int> get cupboard => throw _privateConstructorUsedError;
  Map<String, int> get freezer => throw _privateConstructorUsedError;
  Map<String, int> get fridge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockDTOCopyWith<StockDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDTOCopyWith<$Res> {
  factory $StockDTOCopyWith(StockDTO value, $Res Function(StockDTO) then) =
      _$StockDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Map<String, int> cupboard,
      Map<String, int> freezer,
      Map<String, int> fridge});
}

/// @nodoc
class _$StockDTOCopyWithImpl<$Res> implements $StockDTOCopyWith<$Res> {
  _$StockDTOCopyWithImpl(this._value, this._then);

  final StockDTO _value;
  // ignore: unused_field
  final $Res Function(StockDTO) _then;

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
abstract class _$$_StockDTOCopyWith<$Res> implements $StockDTOCopyWith<$Res> {
  factory _$$_StockDTOCopyWith(
          _$_StockDTO value, $Res Function(_$_StockDTO) then) =
      __$$_StockDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Map<String, int> cupboard,
      Map<String, int> freezer,
      Map<String, int> fridge});
}

/// @nodoc
class __$$_StockDTOCopyWithImpl<$Res> extends _$StockDTOCopyWithImpl<$Res>
    implements _$$_StockDTOCopyWith<$Res> {
  __$$_StockDTOCopyWithImpl(
      _$_StockDTO _value, $Res Function(_$_StockDTO) _then)
      : super(_value, (v) => _then(v as _$_StockDTO));

  @override
  _$_StockDTO get _value => super._value as _$_StockDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? cupboard = freezed,
    Object? freezer = freezed,
    Object? fridge = freezed,
  }) {
    return _then(_$_StockDTO(
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
@JsonSerializable()
class _$_StockDTO extends _StockDTO {
  const _$_StockDTO(
      {this.id = '',
      final Map<String, int> cupboard = const {},
      final Map<String, int> freezer = const {},
      final Map<String, int> fridge = const {}})
      : _cupboard = cupboard,
        _freezer = freezer,
        _fridge = fridge,
        super._();

  factory _$_StockDTO.fromJson(Map<String, dynamic> json) =>
      _$$_StockDTOFromJson(json);

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
    return 'StockDTO(id: $id, cupboard: $cupboard, freezer: $freezer, fridge: $fridge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._cupboard, _cupboard) &&
            const DeepCollectionEquality().equals(other._freezer, _freezer) &&
            const DeepCollectionEquality().equals(other._fridge, _fridge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_cupboard),
      const DeepCollectionEquality().hash(_freezer),
      const DeepCollectionEquality().hash(_fridge));

  @JsonKey(ignore: true)
  @override
  _$$_StockDTOCopyWith<_$_StockDTO> get copyWith =>
      __$$_StockDTOCopyWithImpl<_$_StockDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockDTOToJson(
      this,
    );
  }
}

abstract class _StockDTO extends StockDTO {
  const factory _StockDTO(
      {final String id,
      final Map<String, int> cupboard,
      final Map<String, int> freezer,
      final Map<String, int> fridge}) = _$_StockDTO;
  const _StockDTO._() : super._();

  factory _StockDTO.fromJson(Map<String, dynamic> json) = _$_StockDTO.fromJson;

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
  _$$_StockDTOCopyWith<_$_StockDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
