import 'package:flutter/material.dart';
import 'package:food_stock_app/application/product_notifier.dart';
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
      body: Center(
        child: productsProvider.map(
          initial: (_) {
            ref.read(productsNotifierProvider.notifier).getProducts();
            return const CircularProgressIndicator();
          },
          loadSuccess: (_) => productsProvider.productList.isEmpty
              ? const Text("Products list is empty")
              : SizedBox(
                  width: 300,
                  height: 300,
                  child: ListView.builder(
                    itemCount: _.productList.length,
                    itemBuilder: ((context, index) =>
                        Text(productsProvider.productList[index].name)),
                  ),
                ),
          failure: (_) => const Text("Error"), //TODO needs error handling
          inProgress: (_) {
            ref.read(productsNotifierProvider.notifier).getProducts();
            return const CircularProgressIndicator();
          },
          createSuccess: (_) => productsProvider.productList.isEmpty
              ? const Text("Products list is empty")
              : SizedBox(
                  width: 300,
                  height: 300,
                  child: ListView.builder(
                    itemCount: _.productList.length,
                    itemBuilder: ((context, index) =>
                        Text(productsProvider.productList[index].name)),
                  ),
                ),
        ),
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
