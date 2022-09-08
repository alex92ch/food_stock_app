import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_stock_app/application/product_notifier.dart';
import 'package:food_stock_app/domain/shared/product.dart';
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
    return DismissiblePane(
      closeOnCancel: true,
      dismissThreshold: 0.25,
      onDismissed: () async {
        await productStateNotifier.deleteProduct(
            product: productList[index], productList: productList);
        // final scaffoldmessenger = ScaffoldMessenger.of(context);
        // scaffoldmessenger.clearSnackBars();
        // await productStateNotifier
        //     .deleteProduct(
        //         product: productList[index], productList: productList)
        //     .then((value) => scaffoldmessenger.showSnackBar(SnackBar(
        //           action: SnackBarAction(
        //             label: 'Rückgängig',
        //             onPressed: () {
        //               // productStateNotifier.undoDeleteProduct(
        //               //     product: productList[index], productList: productList);
        //             },
        //           ),
        //           content: const Text('In den Papierkorb verschoben.'),
        //           margin: const EdgeInsets.all(10),
        //           duration: Duration(seconds: duration),
        //           padding: const EdgeInsets.symmetric(
        //               horizontal: 15.0,
        //               vertical: 10.0 // Inner padding for SnackBar content.
        //               ),
        //           elevation: 6,
        //           behavior: SnackBarBehavior.floating,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(5.0),
        //           ),
        //         )));
      },
    );
  }
}
