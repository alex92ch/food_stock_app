import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/presentation/base_data/shared/widgets/base_data_list.dart';

import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataPage extends HookConsumerWidget {
  const BaseDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    final productsProvider = ref.watch(productsNotifierProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Kühlschrank"),
          Center(
            child: productsProvider.maybeMap(
              initial: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              failure: (_) => const Text("Error"), //TODO needs error handling
              inProgress: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              orElse: () {
                return productsProvider.productList
                        .where((element) =>
                            element.storagePlace == Storageplace.fridge)
                        .isEmpty
                    ? const Text("Fridge is empty")
                    : const BaseDataList(storagePlace: Storageplace.fridge);
              },
            ),
          ),
          const Text("Tiefkühler"),
          Center(
            child: productsProvider.maybeMap(
              initial: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              failure: (_) => const Text("Error"),
              inProgress: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              orElse: () {
                return productsProvider.productList
                        .where((element) =>
                            element.storagePlace == Storageplace.freezer)
                        .isEmpty
                    ? const Text("Freezer is empty")
                    : const BaseDataList(storagePlace: Storageplace.freezer);
              },
            ),
          ),
          const Text("Schrank"),
          Center(
            child: productsProvider.maybeMap(
              initial: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              failure: (_) => const Text("Error"),
              inProgress: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              orElse: () {
                return productsProvider.productList
                        .where((element) =>
                            element.storagePlace == Storageplace.cupboard)
                        .isEmpty
                    ? const Text("Cupboard is empty")
                    : const BaseDataList(storagePlace: Storageplace.cupboard);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                router.push(const NewProductRoute());
              },
              child: const Icon(Icons.add),
            ),
            Menu(router: router)
          ],
        ),
      ),
      // floatingActionButton: Menu(router: router),
    );
  }
}
