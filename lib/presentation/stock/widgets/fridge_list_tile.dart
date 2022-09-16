import 'package:flutter/material.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/stock/stock.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FridgeListTile extends HookConsumerWidget {
  final Stock stock;
  final int index;
  final List<Product> productList;
  const FridgeListTile(
      {Key? key,
      required this.stock,
      required this.index,
      required this.productList})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final router = ref.read(routeProvider);
    final Product fridgeItem = productList.firstWhere(
        (element) => element.id == stock.fridgeList.keys.elementAt(index));
    final int fridgeItemAmount = stock.fridgeList[fridgeItem.id]!;
    return ListTile(
      onTap: () {
        //TODO needs implementation
      },
      leading: IconButton(
          onPressed: () async {
            Map<String, int> newFridgeList = Map.of(stock.fridgeList);
            newFridgeList[fridgeItem.id] = fridgeItemAmount + 1;
            await ref
                .read(stockNotifierProvider.notifier)
                .updateFridge(stock: stock, fridgeList: newFridgeList);
            //TODO needs implementation
          },
          icon: const Icon(Icons.add)),
      title: Text(fridgeItem.name),
      subtitle: Text(fridgeItemAmount.toString()),
      trailing: IconButton(
          onPressed: () async {
            Map<String, int> newFridgeList = Map.of(stock.fridgeList);
            newFridgeList[fridgeItem.id] = fridgeItemAmount - 1;
            await ref
                .read(stockNotifierProvider.notifier)
                .updateFridge(stock: stock, fridgeList: newFridgeList);
            //TODO needs implementation
          },
          icon: const Icon(Icons.remove)),
      // trailing: ,
    );
  }
}
