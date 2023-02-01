import 'package:flutter/material.dart';
import 'package:food_stock_app/application/overview/almost_out_of_stock_notifier.dart';
import 'package:food_stock_app/application/overview/out_of_stock_notifier.dart';
import 'package:food_stock_app/presentation/overview/widgets/overview_list_tile.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewList extends HookConsumerWidget {
  final bool outOfStock;
  const OverviewList({Key? key, required this.outOfStock}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final outOfStockList = ref.watch(outOfStockNotifierProvider).stockList;
    final almostOutOfStockList =
        ref.watch(almostOutOfStockNotifierProvider).stockList;
    return SizedBox(
      width: 300,
      height: 200,
      child: RefreshIndicator(
        onRefresh: () async {
          ref.read(outOfStockNotifierProvider.notifier).getOutOfStockList();
          ref
              .read(almostOutOfStockNotifierProvider.notifier)
              .getAlmostOutOfStockList();
        },
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: outOfStock
              ? List.from(outOfStockList.cupboardItemList
                      .map((e) => e.product)
                      .toList()
                    ..addAll(outOfStockList.fridgeItemList
                        .map((e) => e.product)
                        .toList()
                      ..addAll(outOfStockList.freezerItemList
                          .map((e) => e.product)
                          .toList())))
                  .length
              : List.from(almostOutOfStockList.cupboardItemList
                      .map((e) => e.product)
                      .toList()
                    ..addAll(almostOutOfStockList.fridgeItemList
                        .map((e) => e.product)
                        .toList()
                      ..addAll(almostOutOfStockList.freezerItemList
                          .map((e) => e.product)
                          .toList())))
                  .length,
          itemBuilder: ((context, index) => OverviewListTile(
                outOfStock: outOfStock,
                product: outOfStock
                    ? List.from(outOfStockList.cupboardItemList.map((e) => e.product).toList()
                      ..addAll(
                          outOfStockList.fridgeItemList.map((e) => e.product).toList()
                            ..addAll(outOfStockList.freezerItemList
                                .map((e) => e.product)
                                .toList())))[index]
                    : List.from(almostOutOfStockList.cupboardItemList
                        .map((e) => e.product)
                        .toList()
                      ..addAll(almostOutOfStockList.fridgeItemList.map((e) => e.product).toList()
                        ..addAll(almostOutOfStockList.freezerItemList.map((e) => e.product).toList())))[index],
              )),
        ),
      ),
    );
  }
}
