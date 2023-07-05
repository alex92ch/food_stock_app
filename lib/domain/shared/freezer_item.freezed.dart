// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezer_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FreezerItem {
  Product get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreezerItemCopyWith<FreezerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezerItemCopyWith<$Res> {
  factory $FreezerItemCopyWith(
          FreezerItem value, $Res Function(FreezerItem) then) =
      _$FreezerItemCopyWithImpl<$Res, FreezerItem>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$FreezerItemCopyWithImpl<$Res, $Val extends FreezerItem>
    implements $FreezerItemCopyWith<$Res> {
  _$FreezerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FreezerItemCopyWith<$Res>
    implements $FreezerItemCopyWith<$Res> {
  factory _$$_FreezerItemCopyWith(
          _$_FreezerItem value, $Res Function(_$_FreezerItem) then) =
      __$$_FreezerItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_FreezerItemCopyWithImpl<$Res>
    extends _$FreezerItemCopyWithImpl<$Res, _$_FreezerItem>
    implements _$$_FreezerItemCopyWith<$Res> {
  __$$_FreezerItemCopyWithImpl(
      _$_FreezerItem _value, $Res Function(_$_FreezerItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_FreezerItem(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_FreezerItem extends _FreezerItem {
  const _$_FreezerItem({required this.product}) : super._();

  @override
  final Product product;

  @override
  String toString() {
    return 'FreezerItem(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreezerItem &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FreezerItemCopyWith<_$_FreezerItem> get copyWith =>
      __$$_FreezerItemCopyWithImpl<_$_FreezerItem>(this, _$identity);
}

abstract class _FreezerItem extends FreezerItem {
  const factory _FreezerItem({required final Product product}) = _$_FreezerItem;
  const _FreezerItem._() : super._();

  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$$_FreezerItemCopyWith<_$_FreezerItem> get copyWith =>
      throw _privateConstructorUsedError;
}
