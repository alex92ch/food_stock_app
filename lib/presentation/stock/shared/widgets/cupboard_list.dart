import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/presentation/stock/shared/widgets/cupboard_list_tile.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class CupboardList extends HookConsumerWidget {
  const CupboardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = ref.watch(productsNotifierProvider).productList;
    final stock = ref.watch(stockNotifierProvider).stock;
    return SizedBox(
        width: 300,
        height: 200,
        child: ListView.builder(
            itemCount: stock.cupboardList.length,
            itemBuilder: ((context, index) => CupboardListTile(
                  product: productList.firstWhere((element) =>
                      element.id == stock.cupboardList.keys.elementAt(index)),
                ))));
  }
}
