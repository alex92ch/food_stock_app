import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/stock/stock.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CupboardListTile extends HookConsumerWidget {
  final Stock stock;
  final int index;
  final List<Product> productList;
  const CupboardListTile(
      {Key? key,
      required this.stock,
      required this.index,
      required this.productList})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final router = ref.read(routeProvider);
    final Product cupboardItem = productList.firstWhere(
        (element) => element.id == stock.cupboardList.keys.elementAt(index));
    final int cupboardItemAmount = stock.cupboardList[cupboardItem.id]!;
    return ListTile(
      onTap: () {
        //TODO needs implementation
      },
      trailing: IconButton(
          onPressed: () {
            //TODO needs implementation
          },
          icon: const Icon(Icons.remove)),
      title: Text(cupboardItem.name),
      subtitle: Text(cupboardItemAmount.toString()),
      leading: IconButton(
          onPressed: () {
            //TODO needs implementation
          },
          icon: const Icon(Icons.add)),
      // trailing: ,
    );
  }
}
