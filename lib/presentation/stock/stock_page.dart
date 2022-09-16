import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:food_stock_app/presentation/stock/widgets/cupboard_list.dart';
import 'package:food_stock_app/presentation/stock/widgets/freezer_list.dart';
import 'package:food_stock_app/presentation/stock/widgets/fridge_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockPage extends HookConsumerWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    final stockProvider = ref.watch(stockNotifierProvider);
    final productsList = ref.watch(productsNotifierProvider).map(
        initial: (_) {
          ref.read(productsNotifierProvider.notifier).getProductList();
          return _.productList;
        },
        loadSuccess: (_) => _.productList,
        failure: (_) => _.productList,
        inProgress: (_) {
          ref.read(productsNotifierProvider.notifier).getProductList();
          return _.productList;
        },
        deleteSuccess: (_) => _.productList,
        createSuccess: (_) => _.productList,
        undoDeleteProduct: (_) => _.productList,
        updateSuccess: (_) => _.productList);
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Kühlschrank"),
            Center(
                child: stockProvider.map(
              initial: (_) {
                ref.read(stockNotifierProvider.notifier).getStock();
                return const CircularProgressIndicator();
              },
              loadSuccess: (_) {
                return _.stock.fridgeList.isEmpty || productsList.isEmpty
                    ? const Text("Fridge is empty")
                    : FridgeList(stock: _.stock, productList: productsList);
              },
              failure: (_) => const Text("Error"),
              inProgress: (_) {
                ref.read(stockNotifierProvider.notifier).getStock();
                return const CircularProgressIndicator();
              },
              createSuccess: (_) {
                return _.stock.fridgeList.isEmpty
                    ? const Text("Fridge is empty")
                    : FridgeList(stock: _.stock, productList: productsList);
              },
              updateSuccess: (_) {
                return _.stock.fridgeList.isEmpty
                    ? const Text("Fridge is empty")
                    : FridgeList(stock: _.stock, productList: productsList);
              },
            )),
            const Text("Tiefkühler"),
            Center(
                child: stockProvider.map(
              initial: (_) {
                ref.read(stockNotifierProvider.notifier).getStock();
                return const CircularProgressIndicator();
              },
              loadSuccess: (_) {
                return _.stock.freezerList.isEmpty || productsList.isEmpty
                    ? const Text("Freezer is empty")
                    : FreezerList(stock: _.stock, productList: productsList);
              },
              failure: (_) => const Text("Error"),
              inProgress: (_) {
                ref.read(stockNotifierProvider.notifier).getStock();
                return const CircularProgressIndicator();
              },
              createSuccess: (_) {
                return _.stock.freezerList.isEmpty || productsList.isEmpty
                    ? const Text("Freezer is empty")
                    : FreezerList(stock: _.stock, productList: productsList);
              },
              updateSuccess: (_) {
                return _.stock.freezerList.isEmpty || productsList.isEmpty
                    ? const Text("Freezer is empty")
                    : FreezerList(stock: _.stock, productList: productsList);
              },
            )),
            const Text("Schrank"),
            Center(
                child: stockProvider.map(
              initial: (_) {
                ref.read(stockNotifierProvider.notifier).getStock();
                return const CircularProgressIndicator();
              },
              loadSuccess: (_) {
                return _.stock.cupboardList.isEmpty || productsList.isEmpty
                    ? const Text("Cupboard is empty")
                    : CupboardList(stock: _.stock, productList: productsList);
              },
              failure: (_) => const Text("Error"),
              inProgress: (_) {
                ref.read(stockNotifierProvider.notifier).getStock();
                return const CircularProgressIndicator();
              },
              createSuccess: (_) {
                return _.stock.cupboardList.isEmpty
                    ? const Text("Cupboard is empty")
                    : CupboardList(stock: _.stock, productList: productsList);
              },
              updateSuccess: (_) {
                return _.stock.cupboardList.isEmpty
                    ? const Text("Cupboard is empty")
                    : CupboardList(stock: _.stock, productList: productsList);
              },
            )),
          ],
        ),
        floatingActionButton: Menu(router: router));
  }
}
