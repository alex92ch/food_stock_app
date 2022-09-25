// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fridge_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FridgeItem {
  Product get product => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FridgeItemCopyWith<FridgeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FridgeItemCopyWith<$Res> {
  factory $FridgeItemCopyWith(
          FridgeItem value, $Res Function(FridgeItem) then) =
      _$FridgeItemCopyWithImpl<$Res>;
  $Res call({Product product, int amount});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$FridgeItemCopyWithImpl<$Res> implements $FridgeItemCopyWith<$Res> {
  _$FridgeItemCopyWithImpl(this._value, this._then);

  final FridgeItem _value;
  // ignore: unused_field
  final $Res Function(FridgeItem) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$$_FridgeItemCopyWith<$Res>
    implements $FridgeItemCopyWith<$Res> {
  factory _$$_FridgeItemCopyWith(
          _$_FridgeItem value, $Res Function(_$_FridgeItem) then) =
      __$$_FridgeItemCopyWithImpl<$Res>;
  @override
  $Res call({Product product, int amount});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_FridgeItemCopyWithImpl<$Res> extends _$FridgeItemCopyWithImpl<$Res>
    implements _$$_FridgeItemCopyWith<$Res> {
  __$$_FridgeItemCopyWithImpl(
      _$_FridgeItem _value, $Res Function(_$_FridgeItem) _then)
      : super(_value, (v) => _then(v as _$_FridgeItem));

  @override
  _$_FridgeItem get _value => super._value as _$_FridgeItem;

  @override
  $Res call({
    Object? product = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_FridgeItem(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FridgeItem extends _FridgeItem {
  const _$_FridgeItem({this.product = const Product(), this.amount = 0})
      : super._();

  @override
  @JsonKey()
  final Product product;
  @override
  @JsonKey()
  final int amount;

  @override
  String toString() {
    return 'FridgeItem(product: $product, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FridgeItem &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$_FridgeItemCopyWith<_$_FridgeItem> get copyWith =>
      __$$_FridgeItemCopyWithImpl<_$_FridgeItem>(this, _$identity);
}

abstract class _FridgeItem extends FridgeItem {
  const factory _FridgeItem({final Product product, final int amount}) =
      _$_FridgeItem;
  const _FridgeItem._() : super._();

  @override
  Product get product;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_FridgeItemCopyWith<_$_FridgeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
