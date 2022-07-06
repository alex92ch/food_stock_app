import 'package:food_stock_app/domain/shared/unit_of_measurement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const Product._();
  const factory Product({
    @Default('') String name,
    @Default(1) double threshold,
    @Default(UnitOfMeasurement(amount: 0, measurement: Measurement.kilogram))
        UnitOfMeasurement unitOfMeasurement,
    @Default(Storageplace.fridge) Storageplace storageplace,
    @Default('') String description,
    @Default(false) bool image, //TODO needs implementation
    @Default(false) bool barcode, //TODO needs implementation
  }) = _Product;
}

enum Storageplace { cupboard, fridge, freezer }
