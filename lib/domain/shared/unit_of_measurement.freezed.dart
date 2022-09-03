// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unit_of_measurement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnitOfMeasurement {
  double get amount => throw _privateConstructorUsedError;
  Measurement get measurement => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnitOfMeasurementCopyWith<UnitOfMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitOfMeasurementCopyWith<$Res> {
  factory $UnitOfMeasurementCopyWith(
          UnitOfMeasurement value, $Res Function(UnitOfMeasurement) then) =
      _$UnitOfMeasurementCopyWithImpl<$Res>;
  $Res call({double amount, Measurement measurement});
}

/// @nodoc
class _$UnitOfMeasurementCopyWithImpl<$Res>
    implements $UnitOfMeasurementCopyWith<$Res> {
  _$UnitOfMeasurementCopyWithImpl(this._value, this._then);

  final UnitOfMeasurement _value;
  // ignore: unused_field
  final $Res Function(UnitOfMeasurement) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? measurement = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      measurement: measurement == freezed
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Measurement,
    ));
  }
}

/// @nodoc
abstract class _$$_UnitOfMeasurementCopyWith<$Res>
    implements $UnitOfMeasurementCopyWith<$Res> {
  factory _$$_UnitOfMeasurementCopyWith(_$_UnitOfMeasurement value,
          $Res Function(_$_UnitOfMeasurement) then) =
      __$$_UnitOfMeasurementCopyWithImpl<$Res>;
  @override
  $Res call({double amount, Measurement measurement});
}

/// @nodoc
class __$$_UnitOfMeasurementCopyWithImpl<$Res>
    extends _$UnitOfMeasurementCopyWithImpl<$Res>
    implements _$$_UnitOfMeasurementCopyWith<$Res> {
  __$$_UnitOfMeasurementCopyWithImpl(
      _$_UnitOfMeasurement _value, $Res Function(_$_UnitOfMeasurement) _then)
      : super(_value, (v) => _then(v as _$_UnitOfMeasurement));

  @override
  _$_UnitOfMeasurement get _value => super._value as _$_UnitOfMeasurement;

  @override
  $Res call({
    Object? amount = freezed,
    Object? measurement = freezed,
  }) {
    return _then(_$_UnitOfMeasurement(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      measurement: measurement == freezed
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Measurement,
    ));
  }
}

/// @nodoc

class _$_UnitOfMeasurement extends _UnitOfMeasurement {
  const _$_UnitOfMeasurement({required this.amount, required this.measurement})
      : super._();

  @override
  final double amount;
  @override
  final Measurement measurement;

  @override
  String toString() {
    return 'UnitOfMeasurement(amount: $amount, measurement: $measurement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitOfMeasurement &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.measurement, measurement));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(measurement));

  @JsonKey(ignore: true)
  @override
  _$$_UnitOfMeasurementCopyWith<_$_UnitOfMeasurement> get copyWith =>
      __$$_UnitOfMeasurementCopyWithImpl<_$_UnitOfMeasurement>(
          this, _$identity);
}

abstract class _UnitOfMeasurement extends UnitOfMeasurement {
  const factory _UnitOfMeasurement(
      {required final double amount,
      required final Measurement measurement}) = _$_UnitOfMeasurement;
  const _UnitOfMeasurement._() : super._();

  @override
  double get amount;
  @override
  Measurement get measurement;
  @override
  @JsonKey(ignore: true)
  _$$_UnitOfMeasurementCopyWith<_$_UnitOfMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}
