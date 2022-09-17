import 'package:flutter/material.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/stock/stock.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FreezerListTile extends HookConsumerWidget {
  final Stock stock;
  final Product product;
  const FreezerListTile({
    Key? key,
    required this.stock,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final router = ref.read(routeProvider);
    final int freezerItemAmount = stock.freezerList[product.id]!;
    return ListTile(
      onTap: () {
        //TODO needs implementation
      },
      leading: IconButton(
          onPressed: () async {
            Map<String, int> newFreezerList = Map.of(stock.freezerList);
            newFreezerList[product.id] = freezerItemAmount + 1;
            await ref
                .read(stockNotifierProvider.notifier)
                .updateFreezer(stock: stock, freezerList: newFreezerList);
            //TODO needs implementation
          },
          icon: const Icon(Icons.add)),
      title: Text(product.name),
      subtitle: Text(freezerItemAmount.toString()),
      trailing: IconButton(
          onPressed: () async {
            Map<String, int> newFreezerList = Map.of(stock.freezerList);
            newFreezerList[product.id] = freezerItemAmount - 1;
            await ref
                .read(stockNotifierProvider.notifier)
                .updateFreezer(stock: stock, freezerList: newFreezerList);
            //TODO needs implementation
          },
          icon: const Icon(Icons.remove)),
    );
  }
}
