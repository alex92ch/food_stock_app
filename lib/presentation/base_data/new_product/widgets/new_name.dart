import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewName extends HookConsumerWidget {
  final ValueNotifier<Product> _product;
  const NewName(this._product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          initialValue: _product.value.name,
          onChanged: (value) {
            _product.value = _product.value.copyWith(name: value);
          },
          decoration: const InputDecoration(
            label: Text("Namen"),
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
