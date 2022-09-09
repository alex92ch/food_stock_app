import 'package:flutter/material.dart';
import 'package:food_stock_app/application/product_notifier.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditOptionals extends HookConsumerWidget {
  final ValueNotifier<Product> product;
  final ValueNotifier<GlobalKey<FormState>> formKey;
  const EditOptionals(this.product, this.formKey, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsProvider = ref.watch(productsNotifierProvider);

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
        ElevatedButton(
          onPressed: () {
            if (formKey.value.currentState?.validate() ?? false) {
              ref.read(productsNotifierProvider.notifier).updateProduct(
                  product: product.value,
                  productList: productsProvider.map(
                    initial: ((_) => _.productList),
                    loadSuccess: ((_) => _.productList),
                    failure: ((_) => _.productList),
                    inProgress: ((_) => _.productList),
                    deleteSuccess: ((_) => _.productList),
                    createSuccess: ((_) => _.productList),
                    undoDeleteProduct: ((_) => _.productList),
                    updateSuccess: ((_) => _.productList),
                  ));
              ref.read(routeProvider).popUntilRouteWithName('BaseDataRoute');
            } else {
              debugPrint('validation failed');
              //TODO handle failed validation
            }
          },
          style: const ButtonStyle(),
          child: const Text("Produkt Speichern"),
        ),
      ],
    );
  }
}
