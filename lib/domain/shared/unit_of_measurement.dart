import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_of_measurement.freezed.dart';

@freezed
class UnitOfMeasurement with _$UnitOfMeasurement {
  const UnitOfMeasurement._();
  const factory UnitOfMeasurement({
    required double amount,
    required Measurement measurement,
  }) = _UnitOfMeasurement;
}

enum Measurement { kilogram, liter }
