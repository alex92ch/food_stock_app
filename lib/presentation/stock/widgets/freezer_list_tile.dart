import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/stock/stock.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FreezerListTile extends HookConsumerWidget {
  final Stock stock;
  final int index;
  final List<Product> productList;
  const FreezerListTile(
      {Key? key,
      required this.stock,
      required this.index,
      required this.productList})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final router = ref.read(routeProvider);
    final Product freezerItem = productList.firstWhere(
        (element) => element.id == stock.freezerList.keys.elementAt(index));
    final int freezerItemAmount = stock.freezerList[freezerItem.id]!;
    return ListTile(
      onTap: () {
        //TODO needs implementation
      },
      trailing: IconButton(
          onPressed: () {
            //TODO needs implementation
          },
          icon: const Icon(Icons.remove)),
      title: Text(freezerItem.name),
      subtitle: Text(freezerItemAmount.toString()),
      leading: IconButton(
          onPressed: () {
            //TODO needs implementation
          },
          icon: const Icon(Icons.add)),
      // trailing: ,
    );
  }
}
