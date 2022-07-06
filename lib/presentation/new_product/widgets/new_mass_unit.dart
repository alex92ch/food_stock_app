import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:food_stock_app/domain/shared/unit_of_measurement.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewMassUnit extends HookConsumerWidget {
  final ValueNotifier<Product> _productHook;
  const NewMassUnit(this._productHook, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          initialValue: _productHook.value.unitOfMeasurement.amount.toString(),
          onChanged: (value) {
            _productHook.value = _productHook.value.copyWith(
              unitOfMeasurement: _productHook.value.unitOfMeasurement.copyWith(
                amount: double.parse(value),
              ),
            );
          },
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Masseinheit",
          ),
        ),
        RadioListTile<Measurement>(
          title: const Text("Kilogramm"),
          value: Measurement.kilogram,
          groupValue: _productHook.value.unitOfMeasurement.measurement,
          onChanged: (_) {
            _productHook.value =
                _productHook.value = _productHook.value.copyWith(
              unitOfMeasurement: _productHook.value.unitOfMeasurement.copyWith(
                measurement: _!,
              ),
            );
          },
        ),
        RadioListTile<Measurement>(
          title: const Text("Liter"),
          value: Measurement.liter,
          groupValue: _productHook.value.unitOfMeasurement.measurement,
          onChanged: (_) {
            _productHook.value =
                _productHook.value = _productHook.value.copyWith(
              unitOfMeasurement: _productHook.value.unitOfMeasurement.copyWith(
                measurement: _!,
              ),
            );
          },
        ),
      ],
    );
  }
}
