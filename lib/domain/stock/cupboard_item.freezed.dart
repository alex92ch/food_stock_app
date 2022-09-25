// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cupboard_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CupboardItem {
  Product get product => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CupboardItemCopyWith<CupboardItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CupboardItemCopyWith<$Res> {
  factory $CupboardItemCopyWith(
          CupboardItem value, $Res Function(CupboardItem) then) =
      _$CupboardItemCopyWithImpl<$Res>;
  $Res call({Product product, int amount});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$CupboardItemCopyWithImpl<$Res> implements $CupboardItemCopyWith<$Res> {
  _$CupboardItemCopyWithImpl(this._value, this._then);

  final CupboardItem _value;
  // ignore: unused_field
  final $Res Function(CupboardItem) _then;

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
abstract class _$$_CupboardItemCopyWith<$Res>
    implements $CupboardItemCopyWith<$Res> {
  factory _$$_CupboardItemCopyWith(
          _$_CupboardItem value, $Res Function(_$_CupboardItem) then) =
      __$$_CupboardItemCopyWithImpl<$Res>;
  @override
  $Res call({Product product, int amount});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_CupboardItemCopyWithImpl<$Res>
    extends _$CupboardItemCopyWithImpl<$Res>
    implements _$$_CupboardItemCopyWith<$Res> {
  __$$_CupboardItemCopyWithImpl(
      _$_CupboardItem _value, $Res Function(_$_CupboardItem) _then)
      : super(_value, (v) => _then(v as _$_CupboardItem));

  @override
  _$_CupboardItem get _value => super._value as _$_CupboardItem;

  @override
  $Res call({
    Object? product = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_CupboardItem(
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

class _$_CupboardItem extends _CupboardItem {
  const _$_CupboardItem({this.product = const Product(), this.amount = 0})
      : super._();

  @override
  @JsonKey()
  final Product product;
  @override
  @JsonKey()
  final int amount;

  @override
  String toString() {
    return 'CupboardItem(product: $product, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CupboardItem &&
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
  _$$_CupboardItemCopyWith<_$_CupboardItem> get copyWith =>
      __$$_CupboardItemCopyWithImpl<_$_CupboardItem>(this, _$identity);
}

abstract class _CupboardItem extends CupboardItem {
  const factory _CupboardItem({final Product product, final int amount}) =
      _$_CupboardItem;
  const _CupboardItem._() : super._();

  @override
  Product get product;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_CupboardItemCopyWith<_$_CupboardItem> get copyWith =>
      throw _privateConstructorUsedError;
}
