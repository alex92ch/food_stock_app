import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/presentation/stock/widgets/fridge_list_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FridgeList extends HookConsumerWidget {
  const FridgeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = ref.watch(productsNotifierProvider).productList;
    final stock = ref.watch(stockNotifierProvider).stock;
    return SizedBox(
        width: 300,
        height: 200,
        child: ListView.builder(
            itemCount: stock.fridgeList.length,
            itemBuilder: ((context, index) => FridgeListTile(
                  product: productList.firstWhere((element) =>
                      element.id == stock.fridgeList.keys.elementAt(index)),
                ))));
  }
}
