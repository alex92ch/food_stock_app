import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:food_stock_app/presentation/stock/widgets/stock_list_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockList extends HookConsumerWidget {
  final List<Product> productList;
  const StockList({Key? key, required this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: 300,
        height: 300,
        child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: ((context, index) =>
                StockListTile(index: index, productList: productList))));
  }
}
