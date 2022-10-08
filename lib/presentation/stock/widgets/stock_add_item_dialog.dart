import 'package:flutter/material.dart';

import 'package:food_stock_app/presentation/shared/routes/routes.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockAddItemDialog extends HookConsumerWidget {
  final String barcode;
  const StockAddItemDialog({Key? key, required this.barcode}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    return AlertDialog(
      title: const Text("Product not available"),
      actions: <TextButton>[
        TextButton(
          onPressed: () {
            router.push(
              NewProductRoute(barcode: barcode),
            );
          },
          child: const Text("Yes"),
        ),
        TextButton(
          onPressed: () {
            router.pop();
          }, //TODO pop route
          child: const Text("No"),
        ),
      ],
      content: const Text("Do you want to add it?"),
    );
  }
}
