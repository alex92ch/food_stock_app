import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/presentation/stock/shared/widgets/freezer_list_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FreezerList extends HookConsumerWidget {
  const FreezerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = ref.watch(productsNotifierProvider).productList;
    final stock = ref.watch(stockNotifierProvider).stock;
    return SizedBox(
        width: 300,
        height: 200,
        child: ListView.builder(
            itemCount: stock.freezerList.length,
            itemBuilder: ((context, index) => FreezerListTile(
                  product: productList.firstWhere((element) =>
                      element.id == stock.freezerList.keys.elementAt(index)),
                ))));
  }
}
