import 'package:flutter/material.dart';
import 'package:food_stock_app/application/stock/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/stock/freezer_item_notifier.dart';
import 'package:food_stock_app/application/stock/fridge_item_notifier.dart';
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
    final fridgeItemList = ref.watch(fridgeItemNotifierProvider).fridgeItemList;
    final freezerItemList =
        ref.watch(freezerItemNotifierProvider).freezerItemList;
    final cupboardItemList =
        ref.watch(cupboardItemNotifierProvider).cupboardItemList;
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
                .read(freezerItemNotifierProvider.notifier)
                .addFreezerItem(
                    product: product, freezerItemList: freezerItemList)
            : storagePlace == Storageplace.fridge
                ? await ref
                    .read(fridgeItemNotifierProvider.notifier)
                    .addFridgeItem(
                        product: product, fridgeItemList: fridgeItemList)
                : await ref
                    .read(cupboardItemNotifierProvider.notifier)
                    .addCupboardItem(
                        product: product, cupboardItemList: cupboardItemList);
        //TODO add notification
        router.popUntilRouteWithName('StockRoute');
      },
    );
  }
}
