// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get threshold => throw _privateConstructorUsedError;
  @UnitOfMeasurementConverter()
  UnitOfMeasurement get unitOfMeasurement => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  bool get image =>
      throw _privateConstructorUsedError; //TODO needs implementation
  String get barcode => throw _privateConstructorUsedError;
  String get nameInsensitive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CupboardItemDTOCopyWith<CupboardItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CupboardItemDTOCopyWith<$Res> {
  factory $CupboardItemDTOCopyWith(
          CupboardItemDTO value, $Res Function(CupboardItemDTO) then) =
      _$CupboardItemDTOCopyWithImpl<$Res, CupboardItemDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      int threshold,
      @UnitOfMeasurementConverter() UnitOfMeasurement unitOfMeasurement,
      String description,
      int amount,
      bool image,
      String barcode,
      String nameInsensitive});

  $UnitOfMeasurementCopyWith<$Res> get unitOfMeasurement;
}

/// @nodoc
class _$CupboardItemDTOCopyWithImpl<$Res, $Val extends CupboardItemDTO>
    implements $CupboardItemDTOCopyWith<$Res> {
  _$CupboardItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? threshold = null,
    Object? unitOfMeasurement = null,
    Object? description = null,
    Object? amount = null,
    Object? image = null,
    Object? barcode = null,
    Object? nameInsensitive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfMeasurement: null == unitOfMeasurement
          ? _value.unitOfMeasurement
          : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      nameInsensitive: null == nameInsensitive
          ? _value.nameInsensitive
          : nameInsensitive // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitOfMeasurementCopyWith<$Res> get unitOfMeasurement {
    return $UnitOfMeasurementCopyWith<$Res>(_value.unitOfMeasurement, (value) {
      return _then(_value.copyWith(unitOfMeasurement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CupboardItemDTOCopyWith<$Res>
    implements $CupboardItemDTOCopyWith<$Res> {
  factory _$$_CupboardItemDTOCopyWith(
          _$_CupboardItemDTO value, $Res Function(_$_CupboardItemDTO) then) =
      __$$_CupboardItemDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int threshold,
      @UnitOfMeasurementConverter() UnitOfMeasurement unitOfMeasurement,
      String description,
      int amount,
      bool image,
      String barcode,
      String nameInsensitive});

  @override
  $UnitOfMeasurementCopyWith<$Res> get unitOfMeasurement;
}

/// @nodoc
class __$$_CupboardItemDTOCopyWithImpl<$Res>
    extends _$CupboardItemDTOCopyWithImpl<$Res, _$_CupboardItemDTO>
    implements _$$_CupboardItemDTOCopyWith<$Res> {
  __$$_CupboardItemDTOCopyWithImpl(
      _$_CupboardItemDTO _value, $Res Function(_$_CupboardItemDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? threshold = null,
    Object? unitOfMeasurement = null,
    Object? description = null,
    Object? amount = null,
    Object? image = null,
    Object? barcode = null,
    Object? nameInsensitive = null,
  }) {
    return _then(_$_CupboardItemDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfMeasurement: null == unitOfMeasurement
          ? _value.unitOfMeasurement
          : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      nameInsensitive: null == nameInsensitive
          ? _value.nameInsensitive
          : nameInsensitive // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CupboardItemDTO extends _CupboardItemDTO {
  const _$_CupboardItemDTO(
      {this.id = '',
      this.name = '',
      this.threshold = 1,
      @UnitOfMeasurementConverter() this.unitOfMeasurement =
          const UnitOfMeasurement(amount: 0, measurement: Measurement.liter),
      this.description = '',
      this.amount = 0,
      this.image = false,
      this.barcode = '',
      this.nameInsensitive = ''})
      : super._();

  factory _$_CupboardItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CupboardItemDTOFromJson(json);

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
  final String barcode;
  @override
  @JsonKey()
  final String nameInsensitive;

  @override
  String toString() {
    return 'CupboardItemDTO(id: $id, name: $name, threshold: $threshold, unitOfMeasurement: $unitOfMeasurement, description: $description, amount: $amount, image: $image, barcode: $barcode, nameInsensitive: $nameInsensitive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CupboardItemDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.unitOfMeasurement, unitOfMeasurement) ||
                other.unitOfMeasurement == unitOfMeasurement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.nameInsensitive, nameInsensitive) ||
                other.nameInsensitive == nameInsensitive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, threshold,
      unitOfMeasurement, description, amount, image, barcode, nameInsensitive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  const factory _CupboardItemDTO(
      {final String id,
      final String name,
      final int threshold,
      @UnitOfMeasurementConverter() final UnitOfMeasurement unitOfMeasurement,
      final String description,
      final int amount,
      final bool image,
      final String barcode,
      final String nameInsensitive}) = _$_CupboardItemDTO;
  const _CupboardItemDTO._() : super._();

  factory _CupboardItemDTO.fromJson(Map<String, dynamic> json) =
      _$_CupboardItemDTO.fromJson;

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
  String get barcode;
  @override
  String get nameInsensitive;
  @override
  @JsonKey(ignore: true)
  _$$_CupboardItemDTOCopyWith<_$_CupboardItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
