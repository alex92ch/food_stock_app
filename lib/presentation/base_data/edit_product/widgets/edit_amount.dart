import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditAmount extends HookConsumerWidget {
  final ValueNotifier<Product> _product;
  const EditAmount(this._product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          initialValue: _product.value.amount.toString(),
          onChanged: (value) {
            _product.value = _product.value.copyWith(amount: int.parse(value));
          },
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Menge"),
          ),
        )
      ],
    );
  }
}
