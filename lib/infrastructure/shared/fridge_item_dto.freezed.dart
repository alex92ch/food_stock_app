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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get threshold => throw _privateConstructorUsedError;
  @UnitOfMeasurementConverter()
  UnitOfMeasurement get unitOfMeasurement => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  bool get image =>
      throw _privateConstructorUsedError; //TODO needs implementation
  bool get barcode =>
      throw _privateConstructorUsedError; //TODO needs implementation
  String get nameInsensitive => throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String name,
      int threshold,
      @UnitOfMeasurementConverter() UnitOfMeasurement unitOfMeasurement,
      String description,
      int amount,
      bool image,
      bool barcode,
      String nameInsensitive});

  $UnitOfMeasurementCopyWith<$Res> get unitOfMeasurement;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? threshold = freezed,
    Object? unitOfMeasurement = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
    Object? nameInsensitive = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: threshold == freezed
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfMeasurement: unitOfMeasurement == freezed
          ? _value.unitOfMeasurement
          : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as bool,
      nameInsensitive: nameInsensitive == freezed
          ? _value.nameInsensitive
          : nameInsensitive // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_FridgeItemDTOCopyWith<$Res>
    implements $FridgeItemDTOCopyWith<$Res> {
  factory _$$_FridgeItemDTOCopyWith(
          _$_FridgeItemDTO value, $Res Function(_$_FridgeItemDTO) then) =
      __$$_FridgeItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      int threshold,
      @UnitOfMeasurementConverter() UnitOfMeasurement unitOfMeasurement,
      String description,
      int amount,
      bool image,
      bool barcode,
      String nameInsensitive});

  @override
  $UnitOfMeasurementCopyWith<$Res> get unitOfMeasurement;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? threshold = freezed,
    Object? unitOfMeasurement = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
    Object? nameInsensitive = freezed,
  }) {
    return _then(_$_FridgeItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: threshold == freezed
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfMeasurement: unitOfMeasurement == freezed
          ? _value.unitOfMeasurement
          : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as bool,
      nameInsensitive: nameInsensitive == freezed
          ? _value.nameInsensitive
          : nameInsensitive // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FridgeItemDTO extends _FridgeItemDTO {
  const _$_FridgeItemDTO(
      {this.id = '',
      this.name = '',
      this.threshold = 1,
      @UnitOfMeasurementConverter() this.unitOfMeasurement =
          const UnitOfMeasurement(amount: 0, measurement: Measurement.liter),
      this.description = '',
      this.amount = 0,
      this.image = false,
      this.barcode = false,
      this.nameInsensitive = ''})
      : super._();

  factory _$_FridgeItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FridgeItemDTOFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int threshold;
  @override
  @JsonKey()
  @UnitOfMeasurementConverter()
  final UnitOfMeasurement unitOfMeasurement;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final bool image;
//TODO needs implementation
  @override
  @JsonKey()
  final bool barcode;
//TODO needs implementation
  @override
  @JsonKey()
  final String nameInsensitive;

  @override
  String toString() {
    return 'FridgeItemDTO(id: $id, name: $name, threshold: $threshold, unitOfMeasurement: $unitOfMeasurement, description: $description, amount: $amount, image: $image, barcode: $barcode, nameInsensitive: $nameInsensitive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FridgeItemDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.threshold, threshold) &&
            const DeepCollectionEquality()
                .equals(other.unitOfMeasurement, unitOfMeasurement) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality()
                .equals(other.nameInsensitive, nameInsensitive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(threshold),
      const DeepCollectionEquality().hash(unitOfMeasurement),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(nameInsensitive));

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
  const factory _FridgeItemDTO(
      {final String id,
      final String name,
      final int threshold,
      @UnitOfMeasurementConverter() final UnitOfMeasurement unitOfMeasurement,
      final String description,
      final int amount,
      final bool image,
      final bool barcode,
      final String nameInsensitive}) = _$_FridgeItemDTO;
  const _FridgeItemDTO._() : super._();

  factory _FridgeItemDTO.fromJson(Map<String, dynamic> json) =
      _$_FridgeItemDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get threshold;
  @override
  @UnitOfMeasurementConverter()
  UnitOfMeasurement get unitOfMeasurement;
  @override
  String get description;
  @override
  int get amount;
  @override
  bool get image;
  @override //TODO needs implementation
  bool get barcode;
  @override //TODO needs implementation
  String get nameInsensitive;
  @override
  @JsonKey(ignore: true)
  _$$_FridgeItemDTOCopyWith<_$_FridgeItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
