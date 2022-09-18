import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:food_stock_app/presentation/stock/add_stockitem/widgets/add_stockitem_list_tile.dart';
import 'package:food_stock_app/presentation/stock/shared/widgets/add_stockitem_menu.dart';
import 'package:food_stock_app/presentation/stock/shared/widgets/cupboard_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddStockitemPage extends HookConsumerWidget {
  const AddStockitemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    final productsList = ref.watch(productsNotifierProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Kühlschrank"),
          Center(
            child: productsList.maybeMap(
              initial: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              inProgress: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              failure: (_) => const Text("Error"),
              orElse: () {
                return productsList.productList.isEmpty
                    ? const Text("Fridge is empty")
                    : AddStockitemListTile(
                        storageplace: const Storageplace.fridge);
              },
            ),
          ),
          const Text("Tiefkühler"),
          Center(
            child: productsList.maybeMap(
              initial: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              inProgress: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              failure: (_) => const Text("Error"),
              orElse: () {
                return productsList.productList.isEmpty
                    ? const Text("Freezer is empty")
                    : AddStockitemListTile(
                        storageplace: const Storageplace.freezer);
              },
            ),
          ),
          const Text("Schrank"),
          Center(
            child: productsList.maybeMap(
              initial: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              inProgress: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              failure: (_) => const Text("Error"),
              orElse: () {
                return productsList.productList.isEmpty
                    ? const Text("Schrank is empty")
                    : AddStockitemListTile(
                        storageplace: const Storageplace.cupboard);
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
            AddStockitemMenu(router: router),
            Menu(router: router)
          ],
        ),
      ),
    );
    // floatingActionButton: Menu(router: router));
  }
}
