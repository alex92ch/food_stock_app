// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezer_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FreezerItemDTO _$FreezerItemDTOFromJson(Map<String, dynamic> json) {
  return _FreezerItemDTO.fromJson(json);
}

/// @nodoc
mixin _$FreezerItemDTO {
  String get productID => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreezerItemDTOCopyWith<FreezerItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezerItemDTOCopyWith<$Res> {
  factory $FreezerItemDTOCopyWith(
          FreezerItemDTO value, $Res Function(FreezerItemDTO) then) =
      _$FreezerItemDTOCopyWithImpl<$Res>;
  $Res call({String productID, int amount});
}

/// @nodoc
class _$FreezerItemDTOCopyWithImpl<$Res>
    implements $FreezerItemDTOCopyWith<$Res> {
  _$FreezerItemDTOCopyWithImpl(this._value, this._then);

  final FreezerItemDTO _value;
  // ignore: unused_field
  final $Res Function(FreezerItemDTO) _then;

  @override
  $Res call({
    Object? productID = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      productID: productID == freezed
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_FreezerItemDTOCopyWith<$Res>
    implements $FreezerItemDTOCopyWith<$Res> {
  factory _$$_FreezerItemDTOCopyWith(
          _$_FreezerItemDTO value, $Res Function(_$_FreezerItemDTO) then) =
      __$$_FreezerItemDTOCopyWithImpl<$Res>;
  @override
  $Res call({String productID, int amount});
}

/// @nodoc
class __$$_FreezerItemDTOCopyWithImpl<$Res>
    extends _$FreezerItemDTOCopyWithImpl<$Res>
    implements _$$_FreezerItemDTOCopyWith<$Res> {
  __$$_FreezerItemDTOCopyWithImpl(
      _$_FreezerItemDTO _value, $Res Function(_$_FreezerItemDTO) _then)
      : super(_value, (v) => _then(v as _$_FreezerItemDTO));

  @override
  _$_FreezerItemDTO get _value => super._value as _$_FreezerItemDTO;

  @override
  $Res call({
    Object? productID = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_FreezerItemDTO(
      productID: productID == freezed
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FreezerItemDTO extends _FreezerItemDTO {
  const _$_FreezerItemDTO({this.productID = '', this.amount = 0}) : super._();

  factory _$_FreezerItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FreezerItemDTOFromJson(json);

  @override
  @JsonKey()
  final String productID;
  @override
  @JsonKey()
  final int amount;

  @override
  String toString() {
    return 'FreezerItemDTO(productID: $productID, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreezerItemDTO &&
            const DeepCollectionEquality().equals(other.productID, productID) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productID),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$_FreezerItemDTOCopyWith<_$_FreezerItemDTO> get copyWith =>
      __$$_FreezerItemDTOCopyWithImpl<_$_FreezerItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreezerItemDTOToJson(
      this,
    );
  }
}

abstract class _FreezerItemDTO extends FreezerItemDTO {
  const factory _FreezerItemDTO({final String productID, final int amount}) =
      _$_FreezerItemDTO;
  const _FreezerItemDTO._() : super._();

  factory _FreezerItemDTO.fromJson(Map<String, dynamic> json) =
      _$_FreezerItemDTO.fromJson;

  @override
  String get productID;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_FreezerItemDTOCopyWith<_$_FreezerItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
