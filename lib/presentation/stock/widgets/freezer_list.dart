import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/stock/stock.dart';
import 'package:food_stock_app/presentation/stock/widgets/freezer_list_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FreezerList extends HookConsumerWidget {
  final Stock stock;
  final List<Product> productList;
  const FreezerList({Key? key, required this.stock, required this.productList})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: 300,
        height: 200,
        child: ListView.builder(
            itemCount: stock.freezerList.length,
            itemBuilder: ((context, index) => FreezerListTile(
                  index: index,
                  stock: stock,
                  productList: productList,
                ))));
  }
}
