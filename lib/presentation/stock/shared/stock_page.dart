import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:food_stock_app/presentation/stock/shared/widgets/add_stockitem_menu.dart';
import 'package:food_stock_app/presentation/stock/shared/widgets/stock_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockPage extends HookConsumerWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    final stockProvider = ref.watch(stockNotifierProvider);
    final productsList =
        ref.watch(productsNotifierProvider).maybeMap(initial: (_) {
      ref.read(productsNotifierProvider.notifier).getProductList();
      return _.productList;
    }, inProgress: (_) {
      ref.read(productsNotifierProvider.notifier).getProductList();
      return _.productList;
    }, orElse: () {
      return ref.watch(productsNotifierProvider).productList;
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Kühlschrank"),
          Center(
            child: stockProvider.maybeMap(
              initial: (_) {
                ref.read(stockNotifierProvider.notifier).getStock();
                return const CircularProgressIndicator();
              },
              failure: (_) => const Text("Error"), //TODO needs error handling
              inProgress: (_) {
                ref.read(stockNotifierProvider.notifier).getStock();
                return const CircularProgressIndicator();
              },
              orElse: () {
                return stockProvider.stock.fridgeList.isEmpty ||
                        productsList.isEmpty
                    ? const Text("Fridge is empty")
                    : const StockList(storagePlace: Storageplace.fridge);
              },
            ),
          ),
          const Text("Tiefkühler"),
          Center(
              child: stockProvider.maybeMap(
                  initial: (_) {
                    ref.read(stockNotifierProvider.notifier).getStock();
                    return const CircularProgressIndicator();
                  },
                  failure: (_) => const Text("Error"),
                  inProgress: (_) {
                    ref.read(stockNotifierProvider.notifier).getStock();
                    return const CircularProgressIndicator();
                  },
                  orElse: () {
                    return stockProvider.stock.freezerList.isEmpty ||
                            productsList.isEmpty
                        ? const Text("Freezer is empty")
                        : const StockList(storagePlace: Storageplace.freezer);
                  })),
          const Text("Schrank"),
          Center(
              child: stockProvider.maybeMap(
                  initial: (_) {
                    ref.read(stockNotifierProvider.notifier).getStock();
                    return const CircularProgressIndicator();
                  },
                  failure: (_) => const Text("Error"),
                  inProgress: (_) {
                    ref.read(stockNotifierProvider.notifier).getStock();
                    return const CircularProgressIndicator();
                  },
                  orElse: () {
                    return stockProvider.stock.cupboardList.isEmpty
                        ? const Text("Cupboard is empty")
                        : const StockList(storagePlace: Storageplace.cupboard);
                  })),
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
