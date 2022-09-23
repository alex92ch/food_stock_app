import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/presentation/stock/shared/widgets/stock_list_tile.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockList extends HookConsumerWidget {
  final Storageplace storagePlace;
  const StockList({Key? key, required this.storagePlace}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = ref
        .watch(productsNotifierProvider)
        .productList
        .where((element) => element.storagePlace == storagePlace)
        .toList();
    final stock = ref.watch(stockNotifierProvider).stock;

    return SizedBox(
        width: 300,
        height: 200,
        child: ListView.builder(
            itemCount: storagePlace == Storageplace.fridge
                ? stock.fridgeList.length
                : storagePlace == Storageplace.cupboard
                    ? stock.cupboardList.length
                    : stock.freezerList.length,
            itemBuilder: ((context, index) => StockListTile(
                  storagePlace: storagePlace,
                  product: storagePlace == Storageplace.fridge
                      ? productList.firstWhere((element) =>
                          element.id == stock.fridgeList.keys.elementAt(index))
                      : storagePlace == Storageplace.cupboard
                          ? productList.firstWhere((element) =>
                              element.id ==
                              stock.cupboardList.keys.elementAt(index))
                          : productList.firstWhere((element) =>
                              element.id ==
                              stock.freezerList.keys.elementAt(index)),
                ))));
  }
}
