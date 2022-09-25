import 'package:flutter/material.dart';
import 'package:food_stock_app/application/stock/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/stock/freezer_item_notifier.dart';
import 'package:food_stock_app/application/stock/fridge_item_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/presentation/stock/shared/widgets/stock_list_tile.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockList extends HookConsumerWidget {
  final Storageplace storagePlace;
  const StockList({Key? key, required this.storagePlace}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fridgeItemList = ref.watch(fridgeItemNotifierProvider).fridgeItemList;
    final freezerItemList =
        ref.watch(freezerItemNotifierProvider).freezerItemList;
    final cupboardItemList =
        ref.watch(cupboardItemNotifierProvider).cupboardItemList;
    return SizedBox(
        width: 300,
        height: 200,
        child: ListView.builder(
            itemCount: storagePlace == Storageplace.fridge
                ? fridgeItemList.length
                : storagePlace == Storageplace.cupboard
                    ? cupboardItemList.length
                    : freezerItemList.length,
            itemBuilder: ((context, index) => StockListTile(
                index: index,
                storagePlace: storagePlace,
                product: storagePlace == Storageplace.fridge
                    ? fridgeItemList[index].product
                    : storagePlace == Storageplace.cupboard
                        ? cupboardItemList[index].product
                        : freezerItemList[index].product))));
  }
}
