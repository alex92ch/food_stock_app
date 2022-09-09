import 'package:flutter/material.dart';
import 'package:food_stock_app/application/product_notifier.dart';
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
          const Text("Stammdaten"),
          Center(
            child: productsProvider.map(
              initial: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              loadSuccess: (_) => _.productList.isEmpty
                  ? const Text("Products list is empty")
                  : BaseDataList(productList: _.productList),
              failure: (_) => const Text("Error"), //TODO needs error handling
              inProgress: (_) {
                ref.read(productsNotifierProvider.notifier).getProductList();
                return const CircularProgressIndicator();
              },
              createSuccess: (_) => _.productList.isEmpty
                  ? const Text("Products list is empty")
                  : BaseDataList(productList: _.productList),
              deleteSuccess: (_) => _.productList.isEmpty
                  ? const Text("Products list is empty")
                  : BaseDataList(productList: _.productList),
              undoDeleteProduct: (_) {
                return _.productList.isEmpty
                    ? const Text("Products list is empty")
                    : BaseDataList(productList: _.productList);
              },
              updateSuccess: (_) => _.productList.isEmpty
                  ? const Text("Products list is empty")
                  : BaseDataList(productList: _.productList),
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
