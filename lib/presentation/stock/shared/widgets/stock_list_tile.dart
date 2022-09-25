import 'package:flutter/material.dart';
import 'package:food_stock_app/application/stock/almost_out_of_stock_notifier.dart';
import 'package:food_stock_app/application/stock/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/stock/freezer_item_notifier.dart';
import 'package:food_stock_app/application/stock/fridge_item_notifier.dart';
import 'package:food_stock_app/application/stock/out_of_stock_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockListTile extends HookConsumerWidget {
  final Storageplace storagePlace;
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
    return ListTile(
      onTap: () {
        //TODO needs implementation
      },
      leading: IconButton(
          onPressed: () async {
            storagePlace == Storageplace.fridge
                ? await ref
                    .read(fridgeItemNotifierProvider.notifier)
                    .addFridgeItem(
                        product: product, fridgeItemList: fridgeItemList)
                : storagePlace == Storageplace.cupboard
                    ? await ref
                        .read(cupboardItemNotifierProvider.notifier)
                        .addCupboardItem(
                            product: product,
                            cupboardItemList: cupboardItemList)
                    : await ref
                        .read(freezerItemNotifierProvider.notifier)
                        .addFreezerItem(
                            product: product, freezerItemList: freezerItemList);
            await ref
                .read(outOfStockNotifierProvider.notifier)
                .getOutOfStockList();
            await ref
                .read(almostOutOfStockNotifierProvider.notifier)
                .getAlmostOutOfStockList();
          },
          icon: const Icon(Icons.add)),
      title: Text(product.name),
      subtitle: storagePlace == Storageplace.fridge
          ? Text(fridgeItemList[index].amount.toString())
          : storagePlace == Storageplace.cupboard
              ? Text(cupboardItemList[index].amount.toString())
              : Text(freezerItemList[index].amount.toString()),
      trailing: IconButton(
          onPressed: () async {
            storagePlace == Storageplace.fridge
                ? await ref
                    .read(fridgeItemNotifierProvider.notifier)
                    .decreaseFridgeItem(
                        product: product, fridgeItemList: fridgeItemList)
                : storagePlace == Storageplace.cupboard
                    ? await ref
                        .read(cupboardItemNotifierProvider.notifier)
                        .decreaseCupboardItem(
                            product: product,
                            cupboardItemList: cupboardItemList)
                    : await ref
                        .read(freezerItemNotifierProvider.notifier)
                        .decreaseFreezerItem(
                            product: product, freezerItemList: freezerItemList);
            await ref
                .read(outOfStockNotifierProvider.notifier)
                .getOutOfStockList();
            await ref
                .read(almostOutOfStockNotifierProvider.notifier)
                .getAlmostOutOfStockList();
          },
          icon: const Icon(Icons.remove)),
    );
  }
}
