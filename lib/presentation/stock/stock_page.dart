import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:food_stock_app/presentation/stock/widgets/stock_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockPage extends HookConsumerWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    final productsProvider = ref.watch(productsNotifierProvider);
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Lager"),
            Center(
              child: productsProvider.map(
                initial: (_) {
                  ref.read(productsNotifierProvider.notifier).getProductList();
                  return const CircularProgressIndicator();
                },
                loadSuccess: (_) => _.productList.isEmpty
                    ? const Text("Products list is empty")
                    : StockList(productList: _.productList),
                failure: (_) => const Text("Error"), //TODO needs error handling
                inProgress: (_) {
                  ref.read(productsNotifierProvider.notifier).getProductList();
                  return const CircularProgressIndicator();
                },
                createSuccess: (_) => _.productList.isEmpty
                    ? const Text("Products list is empty")
                    : StockList(productList: _.productList),
                deleteSuccess: (_) => _.productList.isEmpty
                    ? const Text("Products list is empty")
                    : StockList(productList: _.productList),
                undoDeleteProduct: (_) {
                  return _.productList.isEmpty
                      ? const Text("Products list is empty")
                      : StockList(productList: _.productList);
                },
                updateSuccess: (_) => _.productList.isEmpty
                    ? const Text("Products list is empty")
                    : StockList(productList: _.productList),
              ),
            ),
          ],
        ),
        floatingActionButton: Menu(router: router));
  }
}
