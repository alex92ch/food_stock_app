import 'package:flutter_test/flutter_test.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/base_data/unit_of_measurement.dart';

void main() {
  group('Domain Layer', () {
    test('Product model, UnitofMeasurement model', () {
      UnitOfMeasurement unitOfMeasurement =
          const UnitOfMeasurement(amount: 3, measurement: Measurement.liter);
      Product product = Product(
          id: "12345",
          name: "Milk",
          threshold: 2,
          unitOfMeasurement: unitOfMeasurement);
      expect(
          product,
          const Product(
              id: "12345",
              name: "Milk",
              threshold: 2,
              unitOfMeasurement: UnitOfMeasurement(
                  amount: 3, measurement: Measurement.liter)));
    });
  });
}
