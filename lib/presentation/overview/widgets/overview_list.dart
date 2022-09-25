import 'package:flutter/material.dart';
import 'package:food_stock_app/application/stock/almost_out_of_stock_notifier.dart';
import 'package:food_stock_app/application/stock/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/stock/freezer_item_notifier.dart';
import 'package:food_stock_app/application/stock/fridge_item_notifier.dart';
import 'package:food_stock_app/application/stock/out_of_stock_notifier.dart';
import 'package:food_stock_app/presentation/overview/widgets/overview_list_tile.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewList extends HookConsumerWidget {
  final bool outOfStock;
  const OverviewList({Key? key, required this.outOfStock}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final outOfStockList = ref.watch(outOfStockNotifierProvider).outOfStockList;
    final almostOutOfStockList =
        ref.watch(almostOutOfStockNotifierProvider).almostOutOfStockList;
    ref.watch(fridgeItemNotifierProvider);
    ref.watch(freezerItemNotifierProvider);
    ref.watch(
        cupboardItemNotifierProvider); //TODO check if it loads if so remove manual get out of stock
    return SizedBox(
      width: 300,
      height: 200,
      child: ListView.builder(
        itemCount:
            outOfStock ? outOfStockList.length : almostOutOfStockList.length,
        itemBuilder: ((context, index) => OverviewListTile(
              product: outOfStock
                  ? outOfStockList[index]
                  : almostOutOfStockList[index],
            )),
      ),
    );
  }
}
