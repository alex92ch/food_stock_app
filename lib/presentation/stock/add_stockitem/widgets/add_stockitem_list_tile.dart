import 'package:flutter/material.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';

import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddStockitemListTile extends HookConsumerWidget {
  final List<Product> productList;
  final Storageplace storagePlace;
  final int index;
  const AddStockitemListTile(
      {Key? key,
      required this.productList,
      required this.index,
      required this.storagePlace})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    final stock = ref.watch(stockNotifierProvider).stock;
    final product = productList[index];
    // return Slidable(
    //     key: ValueKey(productList[index].id),
    //     startActionPane: ActionPane(
    //       motion: const ScrollMotion(),
    //       dismissible: AddStockitemListTileDeleteActionDismissible(
    //         key: ValueKey(productList[index].id),
    //         productList: productList,
    //         duration: 3,
    //         index: index,
    //       ),
    //       children: [
    //         AddStockitemListTileDeleteAction(
    //           product: productList[index],
    //         )
    //       ],
    //     ),
    //     child: ListTile(
    //       title: Text(productList[index].name),
    //       subtitle: Text(productList[index].description),
    //       onTap: () async {
    //         router.push(EditProductRoute(product: productList[index]));
    //       },
    //     ));
    return ListTile(
      title: Text(productList[index].name),
      subtitle: Text(productList[index].description),
      onTap: () async {
        storagePlace == Storageplace.freezer
            ? await ref
                .read(stockNotifierProvider.notifier)
                .addFreezeritem(productID: product.id, stock: stock)
            : storagePlace == Storageplace.fridge
                ? await ref
                    .read(stockNotifierProvider.notifier)
                    .addFridgeitem(productID: product.id, stock: stock)
                : await ref
                    .read(stockNotifierProvider.notifier)
                    .addCupboarditem(productID: product.id, stock: stock);
        //TODO add notification
        router.popUntilRouteWithName('AddStockitemRoute');
      },
    );
  }
}
