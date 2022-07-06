// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Product {
  String get name => throw _privateConstructorUsedError;
  double get threshold => throw _privateConstructorUsedError;
  UnitOfMeasurement get unitOfMeasurement => throw _privateConstructorUsedError;
  Storageplace get storageplace => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get image =>
      throw _privateConstructorUsedError; //TODO needs implementation
  bool get barcode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String name,
      double threshold,
      UnitOfMeasurement unitOfMeasurement,
      Storageplace storageplace,
      String description,
      bool image,
      bool barcode});

  $UnitOfMeasurementCopyWith<$Res> get unitOfMeasurement;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? threshold = freezed,
    Object? unitOfMeasurement = freezed,
    Object? storageplace = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: threshold == freezed
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double,
      unitOfMeasurement: unitOfMeasurement == freezed
          ? _value.unitOfMeasurement
          : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
      storageplace: storageplace == freezed
          ? _value.storageplace
          : storageplace // ignore: cast_nullable_to_non_nullable
              as Storageplace,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UnitOfMeasurementCopyWith<$Res> get unitOfMeasurement {
    return $UnitOfMeasurementCopyWith<$Res>(_value.unitOfMeasurement, (value) {
      return _then(_value.copyWith(unitOfMeasurement: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      double threshold,
      UnitOfMeasurement unitOfMeasurement,
      Storageplace storageplace,
      String description,
      bool image,
      bool barcode});

  @override
  $UnitOfMeasurementCopyWith<$Res> get unitOfMeasurement;
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? name = freezed,
    Object? threshold = freezed,
    Object? unitOfMeasurement = freezed,
    Object? storageplace = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
  }) {
    return _then(_$_Product(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: threshold == freezed
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double,
      unitOfMeasurement: unitOfMeasurement == freezed
          ? _value.unitOfMeasurement
          : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
      storageplace: storageplace == freezed
          ? _value.storageplace
          : storageplace // ignore: cast_nullable_to_non_nullable
              as Storageplace,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Product extends _Product {
  const _$_Product(
      {this.name = '',
      this.threshold = 1,
      this.unitOfMeasurement =
          const UnitOfMeasurement(amount: 0, measurement: Measurement.kilogram),
      this.storageplace = Storageplace.fridge,
      this.description = '',
      this.image = false,
      this.barcode = false})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final double threshold;
  @override
  @JsonKey()
  final UnitOfMeasurement unitOfMeasurement;
  @override
  @JsonKey()
  final Storageplace storageplace;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool image;
//TODO needs implementation
  @override
  @JsonKey()
  final bool barcode;

  @override
  String toString() {
    return 'Product(name: $name, threshold: $threshold, unitOfMeasurement: $unitOfMeasurement, storageplace: $storageplace, description: $description, image: $image, barcode: $barcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.threshold, threshold) &&
            const DeepCollectionEquality()
                .equals(other.unitOfMeasurement, unitOfMeasurement) &&
            const DeepCollectionEquality()
                .equals(other.storageplace, storageplace) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.barcode, barcode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(threshold),
      const DeepCollectionEquality().hash(unitOfMeasurement),
      const DeepCollectionEquality().hash(storageplace),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(barcode));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {final String name,
      final double threshold,
      final UnitOfMeasurement unitOfMeasurement,
      final Storageplace storageplace,
      final String description,
      final bool image,
      final bool barcode}) = _$_Product;
  const _Product._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get threshold => throw _privateConstructorUsedError;
  @override
  UnitOfMeasurement get unitOfMeasurement => throw _privateConstructorUsedError;
  @override
  Storageplace get storageplace => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  bool get image => throw _privateConstructorUsedError;
  @override //TODO needs implementation
  bool get barcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
