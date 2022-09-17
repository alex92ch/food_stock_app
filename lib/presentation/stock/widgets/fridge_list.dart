import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/stock/stock.dart';
import 'package:food_stock_app/presentation/stock/widgets/fridge_list_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FridgeList extends HookConsumerWidget {
  final Stock stock;
  final List<Product> productList;
  const FridgeList({Key? key, required this.stock, required this.productList})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: 300,
        height: 200,
        child: ListView.builder(
            itemCount: stock.fridgeList.length,
            itemBuilder: ((context, index) => FridgeListTile(
                  product: productList.firstWhere((element) =>
                      element.id == stock.fridgeList.keys.elementAt(index)),
                  stock: stock,
                ))));
  }
}
