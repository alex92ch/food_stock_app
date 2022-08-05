import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewStoragePlace extends HookConsumerWidget {
  final ValueNotifier<Product> _product;
  const NewStoragePlace(this._product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Lagerplatz"),
        SizedBox(
          height: 200,
          child: ListView(
            children: [
              RadioListTile<Storageplace>(
                title: const Text("Kühlschrank"),
                value: Storageplace.fridge,
                groupValue: _product.value.storageplace,
                onChanged: (_) {
                  _product.value = _product.value.copyWith(storageplace: _!);
                },
              ),
              RadioListTile<Storageplace>(
                title: const Text("Tiefkühler"),
                value: Storageplace.freezer,
                groupValue: _product.value.storageplace,
                onChanged: (_) {
                  _product.value = _product.value.copyWith(storageplace: _!);
                },
              ),
              RadioListTile<Storageplace>(
                title: const Text("Schrank"),
                value: Storageplace.cupboard,
                groupValue: _product.value.storageplace,
                onChanged: (_) {
                  _product.value = _product.value.copyWith(storageplace: _!);
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
