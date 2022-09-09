import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewOptionals extends HookConsumerWidget {
  final ValueNotifier<Product> product;
  final ValueNotifier<GlobalKey<FormState>> formKey;
  const NewOptionals(this.product, this.formKey, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Beschreibung"),
        TextFormField(
          initialValue: product.value.description,
          onChanged: (value) {
            product.value = product.value.copyWith(description: value);
          },
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintStyle: TextStyle()),
          keyboardType: TextInputType.multiline,
          maxLines: 5,
          maxLength: 500,
        ),
        Row(
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {}, //TODO needs handler
                  icon: const Icon(
                    Icons.camera_alt_rounded,
                    semanticLabel: "Foto hinzufügen",
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {}, //TODO needs handler
              icon: const Icon(
                Icons.qr_code_scanner_rounded,
                semanticLabel: "Barcode scannen",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
