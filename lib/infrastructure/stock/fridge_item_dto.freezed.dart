// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fridge_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FridgeItemDTO _$FridgeItemDTOFromJson(Map<String, dynamic> json) {
  return _FridgeItemDTO.fromJson(json);
}

/// @nodoc
mixin _$FridgeItemDTO {
  String get productID => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FridgeItemDTOCopyWith<FridgeItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FridgeItemDTOCopyWith<$Res> {
  factory $FridgeItemDTOCopyWith(
          FridgeItemDTO value, $Res Function(FridgeItemDTO) then) =
      _$FridgeItemDTOCopyWithImpl<$Res>;
  $Res call({String productID, int amount});
}

/// @nodoc
class _$FridgeItemDTOCopyWithImpl<$Res>
    implements $FridgeItemDTOCopyWith<$Res> {
  _$FridgeItemDTOCopyWithImpl(this._value, this._then);

  final FridgeItemDTO _value;
  // ignore: unused_field
  final $Res Function(FridgeItemDTO) _then;

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
abstract class _$$_FridgeItemDTOCopyWith<$Res>
    implements $FridgeItemDTOCopyWith<$Res> {
  factory _$$_FridgeItemDTOCopyWith(
          _$_FridgeItemDTO value, $Res Function(_$_FridgeItemDTO) then) =
      __$$_FridgeItemDTOCopyWithImpl<$Res>;
  @override
  $Res call({String productID, int amount});
}

/// @nodoc
class __$$_FridgeItemDTOCopyWithImpl<$Res>
    extends _$FridgeItemDTOCopyWithImpl<$Res>
    implements _$$_FridgeItemDTOCopyWith<$Res> {
  __$$_FridgeItemDTOCopyWithImpl(
      _$_FridgeItemDTO _value, $Res Function(_$_FridgeItemDTO) _then)
      : super(_value, (v) => _then(v as _$_FridgeItemDTO));

  @override
  _$_FridgeItemDTO get _value => super._value as _$_FridgeItemDTO;

  @override
  $Res call({
    Object? productID = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_FridgeItemDTO(
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
class _$_FridgeItemDTO extends _FridgeItemDTO {
  const _$_FridgeItemDTO({this.productID = '', this.amount = 0}) : super._();

  factory _$_FridgeItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FridgeItemDTOFromJson(json);

  @override
  @JsonKey()
  final String productID;
  @override
  @JsonKey()
  final int amount;

  @override
  String toString() {
    return 'FridgeItemDTO(productID: $productID, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FridgeItemDTO &&
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
  _$$_FridgeItemDTOCopyWith<_$_FridgeItemDTO> get copyWith =>
      __$$_FridgeItemDTOCopyWithImpl<_$_FridgeItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FridgeItemDTOToJson(
      this,
    );
  }
}

abstract class _FridgeItemDTO extends FridgeItemDTO {
  const factory _FridgeItemDTO({final String productID, final int amount}) =
      _$_FridgeItemDTO;
  const _FridgeItemDTO._() : super._();

  factory _FridgeItemDTO.fromJson(Map<String, dynamic> json) =
      _$_FridgeItemDTO.fromJson;

  @override
  String get productID;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_FridgeItemDTOCopyWith<_$_FridgeItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
