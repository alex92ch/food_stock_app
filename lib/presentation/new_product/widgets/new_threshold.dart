import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewThreshold extends HookConsumerWidget {
  final ValueNotifier<Product> _product;
  const NewThreshold(this._product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          initialValue: _product.value.threshold.toString(),
          onChanged: (value) {
            _product.value =
                _product.value.copyWith(threshold: double.parse(value));
          },
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Schwellwert"),
          ),
        )
      ],
    );
  }
}
