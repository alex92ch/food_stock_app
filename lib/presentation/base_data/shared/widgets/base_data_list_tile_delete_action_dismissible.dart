import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/application/stock/almost_out_of_stock_notifier.dart';
import 'package:food_stock_app/application/stock/out_of_stock_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataListTileDeleteActionDismissible extends HookConsumerWidget {
  final int index;
  final List<Product> productList;
  final int duration;
  const BaseDataListTileDeleteActionDismissible({
    Key? key,
    required this.duration,
    required this.productList,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productStateNotifier = ref.read(productsNotifierProvider.notifier);
    final outOfStockNotifier = ref.read(outOfStockNotifierProvider.notifier);
    final oldProductList = ref.watch(productsNotifierProvider).productList;
    final almostOutOfStockNotifier =
        ref.read(almostOutOfStockNotifierProvider.notifier);
    final scaffoldmessenger = ScaffoldMessenger.of(context);
    return DismissiblePane(
      closeOnCancel: true,
      dismissThreshold: 0.25,
      onDismissed: () async {
        scaffoldmessenger.clearSnackBars();
        await productStateNotifier
            .deleteProduct(
                product: productList[index], productList: oldProductList)
            .then((value) async {
          await outOfStockNotifier.getOutOfStockList();
          await almostOutOfStockNotifier.getAlmostOutOfStockList();
          return scaffoldmessenger.showSnackBar(SnackBar(
            action: SnackBarAction(
              label: 'Rückgängig',
              onPressed: () async {
                await productStateNotifier.undoDeleteProduct(
                    product: productList[index], productList: oldProductList);
                await outOfStockNotifier.getOutOfStockList();
                await almostOutOfStockNotifier.getAlmostOutOfStockList();
              },
            ),
            content: const Text('In den Papierkorb verschoben.'),
            margin: const EdgeInsets.all(10),
            duration: Duration(seconds: duration),
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            elevation: 6,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ));
        });
      },
    );
  }
}
