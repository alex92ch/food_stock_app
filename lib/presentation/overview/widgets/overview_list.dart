import 'package:flutter/material.dart';
import 'package:food_stock_app/application/overview/out_of_stock_notifier.dart';
import 'package:food_stock_app/presentation/overview/widgets/overview_list_tile.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewList extends HookConsumerWidget {
  const OverviewList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final outOfStockList = ref.watch(outOfStockNotifierProvider).stockList;

    return SizedBox(
      width: 300,
      height: 400,
      child: RefreshIndicator(
        onRefresh: () async {
          ref.read(outOfStockNotifierProvider.notifier).getOutOfStockList();
        },
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: List.from(outOfStockList.cupboardItemList
                  .map((e) => e.product)
                  .toList()
                ..addAll(
                    outOfStockList.fridgeItemList.map((e) => e.product).toList()
                      ..addAll(outOfStockList.freezerItemList
                          .map((e) => e.product)
                          .toList())))
              .length,
          itemBuilder: ((context, index) => OverviewListTile(
              product: List.from(outOfStockList.cupboardItemList
                  .map((e) => e.product)
                  .toList()
                ..addAll(
                    outOfStockList.fridgeItemList.map((e) => e.product).toList()
                      ..addAll(outOfStockList.freezerItemList
                          .map((e) => e.product)
                          .toList())))[index])),
        ),
      ),
    );
  }
}
