import 'package:flutter/material.dart';
import 'package:food_stock_app/application/overview/almost_out_of_stock_notifier.dart';
import 'package:food_stock_app/application/overview/out_of_stock_notifier.dart';
import 'package:food_stock_app/application/shared/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/shared/freezer_item_notifier.dart';
import 'package:food_stock_app/application/shared/fridge_item_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/cupboard_item.dart';
import 'package:food_stock_app/domain/shared/freezer_item.dart';
import 'package:food_stock_app/domain/shared/fridge_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockListTile extends HookConsumerWidget {
  final String storagePlace;
  final int index;
  final Product product;
  const StockListTile(
      {Key? key,
      required this.product,
      required this.storagePlace,
      required this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fridgeItemList = ref.watch(fridgeItemNotifierProvider).fridgeItemList;
    final freezerItemList =
        ref.watch(freezerItemNotifierProvider).freezerItemList;
    final cupboardItemList =
        ref.watch(cupboardItemNotifierProvider).cupboardItemList;
    return Card(
      elevation: 4,
      child: ListTile(
        onTap: () {
          //TODO needs implementation
        },
        leading: IconButton(
            onPressed: () async {
              storagePlace == "fridge"
                  ? await ref
                      .read(fridgeItemNotifierProvider.notifier)
                      .increaseFridgeItem(
                          fridgeItem: FridgeItem(product: product),
                          fridgeItemList: fridgeItemList)
                  : storagePlace == "cupboard"
                      ? await ref
                          .read(cupboardItemNotifierProvider.notifier)
                          .increaseCupboardItem(
                              cupboardItem: CupboardItem(product: product),
                              cupboardItemList: cupboardItemList)
                      : await ref
                          .read(freezerItemNotifierProvider.notifier)
                          .increaseFreezerItem(
                              freezerItem: FreezerItem(product: product),
                              freezerItemList: freezerItemList);
              await ref
                  .read(outOfStockNotifierProvider.notifier)
                  .setOutOfSync();
              await ref
                  .read(almostOutOfStockNotifierProvider.notifier)
                  .setOutOfSync();
            },
            icon: const Icon(Icons.add)),
        title: Center(child: Text(product.name)),
        subtitle: Center(
          child: storagePlace == "fridge"
              ? Text(fridgeItemList[index].product.amount.toString())
              : storagePlace == "cupboard"
                  ? Text(cupboardItemList[index].product.amount.toString())
                  : Text(freezerItemList[index].product.amount.toString()),
        ),
        trailing: IconButton(
            onPressed: () async {
              storagePlace == "fridge"
                  ? await ref
                      .read(fridgeItemNotifierProvider.notifier)
                      .decreaseFridgeItem(
                          fridgeItem: FridgeItem(product: product),
                          fridgeItemList: fridgeItemList)
                  : storagePlace == "cupboard"
                      ? await ref
                          .read(cupboardItemNotifierProvider.notifier)
                          .decreaseCupboardItem(
                              cupboardItem: CupboardItem(product: product),
                              cupboardItemList: cupboardItemList)
                      : await ref
                          .read(freezerItemNotifierProvider.notifier)
                          .decreaseFreezerItem(
                              freezerItem: FreezerItem(product: product),
                              freezerItemList: freezerItemList);
              await ref
                  .read(outOfStockNotifierProvider.notifier)
                  .setOutOfSync();
              await ref
                  .read(almostOutOfStockNotifierProvider.notifier)
                  .setOutOfSync();
            },
            icon: const Icon(Icons.remove)),
      ),
    );
  }
}
