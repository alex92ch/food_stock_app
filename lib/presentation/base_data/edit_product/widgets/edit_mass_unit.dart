import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/base_data/unit_of_measurement.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditMassUnit extends HookConsumerWidget {
  final ValueNotifier<Product> _product;
  const EditMassUnit(this._product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          initialValue: _product.value.unitOfMeasurement.amount.toString(),
          onChanged: (value) {
            _product.value = _product.value.copyWith(
              unitOfMeasurement: _product.value.unitOfMeasurement.copyWith(
                amount: double.parse(value),
              ),
            );
          },
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Masseinheit"),
          ),
        ),
        RadioListTile<Measurement>(
          title: const Text("Kilogramm"),
          value: Measurement.kilogram,
          groupValue: _product.value.unitOfMeasurement.measurement,
          onChanged: (_) {
            _product.value = _product.value = _product.value.copyWith(
              unitOfMeasurement: _product.value.unitOfMeasurement.copyWith(
                measurement: _!,
              ),
            );
          },
        ),
        RadioListTile<Measurement>(
          title: const Text("Liter"),
          value: Measurement.liter,
          groupValue: _product.value.unitOfMeasurement.measurement,
          onChanged: (_) {
            _product.value = _product.value = _product.value.copyWith(
              unitOfMeasurement: _product.value.unitOfMeasurement.copyWith(
                measurement: _!,
              ),
            );
          },
        ),
      ],
    );
  }
}
