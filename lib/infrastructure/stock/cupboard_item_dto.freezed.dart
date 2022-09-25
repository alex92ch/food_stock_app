// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cupboard_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CupboardItemDTO _$CupboardItemDTOFromJson(Map<String, dynamic> json) {
  return _CupboardItemDTO.fromJson(json);
}

/// @nodoc
mixin _$CupboardItemDTO {
  String get productID => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CupboardItemDTOCopyWith<CupboardItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CupboardItemDTOCopyWith<$Res> {
  factory $CupboardItemDTOCopyWith(
          CupboardItemDTO value, $Res Function(CupboardItemDTO) then) =
      _$CupboardItemDTOCopyWithImpl<$Res>;
  $Res call({String productID, int amount});
}

/// @nodoc
class _$CupboardItemDTOCopyWithImpl<$Res>
    implements $CupboardItemDTOCopyWith<$Res> {
  _$CupboardItemDTOCopyWithImpl(this._value, this._then);

  final CupboardItemDTO _value;
  // ignore: unused_field
  final $Res Function(CupboardItemDTO) _then;

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
abstract class _$$_CupboardItemDTOCopyWith<$Res>
    implements $CupboardItemDTOCopyWith<$Res> {
  factory _$$_CupboardItemDTOCopyWith(
          _$_CupboardItemDTO value, $Res Function(_$_CupboardItemDTO) then) =
      __$$_CupboardItemDTOCopyWithImpl<$Res>;
  @override
  $Res call({String productID, int amount});
}

/// @nodoc
class __$$_CupboardItemDTOCopyWithImpl<$Res>
    extends _$CupboardItemDTOCopyWithImpl<$Res>
    implements _$$_CupboardItemDTOCopyWith<$Res> {
  __$$_CupboardItemDTOCopyWithImpl(
      _$_CupboardItemDTO _value, $Res Function(_$_CupboardItemDTO) _then)
      : super(_value, (v) => _then(v as _$_CupboardItemDTO));

  @override
  _$_CupboardItemDTO get _value => super._value as _$_CupboardItemDTO;

  @override
  $Res call({
    Object? productID = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_CupboardItemDTO(
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
class _$_CupboardItemDTO extends _CupboardItemDTO {
  const _$_CupboardItemDTO({this.productID = '', this.amount = 0}) : super._();

  factory _$_CupboardItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CupboardItemDTOFromJson(json);

  @override
  @JsonKey()
  final String productID;
  @override
  @JsonKey()
  final int amount;

  @override
  String toString() {
    return 'CupboardItemDTO(productID: $productID, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CupboardItemDTO &&
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
  _$$_CupboardItemDTOCopyWith<_$_CupboardItemDTO> get copyWith =>
      __$$_CupboardItemDTOCopyWithImpl<_$_CupboardItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CupboardItemDTOToJson(
      this,
    );
  }
}

abstract class _CupboardItemDTO extends CupboardItemDTO {
  const factory _CupboardItemDTO({final String productID, final int amount}) =
      _$_CupboardItemDTO;
  const _CupboardItemDTO._() : super._();

  factory _CupboardItemDTO.fromJson(Map<String, dynamic> json) =
      _$_CupboardItemDTO.fromJson;

  @override
  String get productID;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_CupboardItemDTOCopyWith<_$_CupboardItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
