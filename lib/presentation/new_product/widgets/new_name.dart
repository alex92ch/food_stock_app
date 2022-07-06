import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewName extends HookConsumerWidget {
  final ValueNotifier<Product> _productHook;
  const NewName(this._productHook, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          initialValue: _productHook.value.name,
          onChanged: (value) {
            _productHook.value = _productHook.value.copyWith(name: value);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Namen",
          ),
        )
      ],
    );
  }
}
