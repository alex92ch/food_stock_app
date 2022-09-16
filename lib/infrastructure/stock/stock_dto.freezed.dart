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
  Map<String, int> get cupboardList => throw _privateConstructorUsedError;
  Map<String, int> get freezerList => throw _privateConstructorUsedError;
  Map<String, int> get fridgeList => throw _privateConstructorUsedError;

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
      Map<String, int> cupboardList,
      Map<String, int> freezerList,
      Map<String, int> fridgeList});
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
    Object? cupboardList = freezed,
    Object? freezerList = freezed,
    Object? fridgeList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cupboardList: cupboardList == freezed
          ? _value.cupboardList
          : cupboardList // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      freezerList: freezerList == freezed
          ? _value.freezerList
          : freezerList // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      fridgeList: fridgeList == freezed
          ? _value.fridgeList
          : fridgeList // ignore: cast_nullable_to_non_nullable
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
      Map<String, int> cupboardList,
      Map<String, int> freezerList,
      Map<String, int> fridgeList});
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
    Object? cupboardList = freezed,
    Object? freezerList = freezed,
    Object? fridgeList = freezed,
  }) {
    return _then(_$_StockDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cupboardList: cupboardList == freezed
          ? _value._cupboardList
          : cupboardList // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      freezerList: freezerList == freezed
          ? _value._freezerList
          : freezerList // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      fridgeList: fridgeList == freezed
          ? _value._fridgeList
          : fridgeList // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockDTO extends _StockDTO {
  const _$_StockDTO(
      {this.id = '',
      final Map<String, int> cupboardList = const {},
      final Map<String, int> freezerList = const {},
      final Map<String, int> fridgeList = const {}})
      : _cupboardList = cupboardList,
        _freezerList = freezerList,
        _fridgeList = fridgeList,
        super._();

  factory _$_StockDTO.fromJson(Map<String, dynamic> json) =>
      _$$_StockDTOFromJson(json);

  @override
  @JsonKey()
  final String id;
  final Map<String, int> _cupboardList;
  @override
  @JsonKey()
  Map<String, int> get cupboardList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cupboardList);
  }

  final Map<String, int> _freezerList;
  @override
  @JsonKey()
  Map<String, int> get freezerList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_freezerList);
  }

  final Map<String, int> _fridgeList;
  @override
  @JsonKey()
  Map<String, int> get fridgeList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fridgeList);
  }

  @override
  String toString() {
    return 'StockDTO(id: $id, cupboardList: $cupboardList, freezerList: $freezerList, fridgeList: $fridgeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._cupboardList, _cupboardList) &&
            const DeepCollectionEquality()
                .equals(other._freezerList, _freezerList) &&
            const DeepCollectionEquality()
                .equals(other._fridgeList, _fridgeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_cupboardList),
      const DeepCollectionEquality().hash(_freezerList),
      const DeepCollectionEquality().hash(_fridgeList));

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
      final Map<String, int> cupboardList,
      final Map<String, int> freezerList,
      final Map<String, int> fridgeList}) = _$_StockDTO;
  const _StockDTO._() : super._();

  factory _StockDTO.fromJson(Map<String, dynamic> json) = _$_StockDTO.fromJson;

  @override
  String get id;
  @override
  Map<String, int> get cupboardList;
  @override
  Map<String, int> get freezerList;
  @override
  Map<String, int> get fridgeList;
  @override
  @JsonKey(ignore: true)
  _$$_StockDTOCopyWith<_$_StockDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
