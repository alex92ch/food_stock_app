import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewThreshold extends HookConsumerWidget {
  final ValueNotifier<Product> _productHook;
  const NewThreshold(this._productHook, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          initialValue: _productHook.value.threshold.toString(),
          onChanged: (value) {
            _productHook.value =
                _productHook.value.copyWith(threshold: double.parse(value));
          },
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Schwellwert",
          ),
        )
      ],
    );
  }
}
