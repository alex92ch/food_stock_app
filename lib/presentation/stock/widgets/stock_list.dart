import 'package:flutter/material.dart';
import 'package:food_stock_app/application/shared/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/shared/freezer_item_notifier.dart';
import 'package:food_stock_app/application/shared/fridge_item_notifier.dart';
import 'package:food_stock_app/presentation/stock/widgets/stock_list_tile.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockList extends HookConsumerWidget {
  final String storagePlace;
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
        child: RefreshIndicator(
          onRefresh: () async {
            ref.read(fridgeItemNotifierProvider.notifier).getFridgeItemList();

            ref.read(freezerItemNotifierProvider.notifier).getFreezerItemList();
            ref
                .read(cupboardItemNotifierProvider.notifier)
                .getCupboardItemList();
          },
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: storagePlace == "fridge"
                  ? fridgeItemList.length
                  : storagePlace == "cupboard"
                      ? cupboardItemList.length
                      : freezerItemList.length,
              itemBuilder: ((context, index) => StockListTile(
                  index: index,
                  storagePlace: storagePlace,
                  product: storagePlace == "fridge"
                      ? fridgeItemList[index].product
                      : storagePlace == "cupboard"
                          ? cupboardItemList[index].product
                          : freezerItemList[index].product))),
        ));
  }
}
