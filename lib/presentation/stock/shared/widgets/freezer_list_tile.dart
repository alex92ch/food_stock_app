import 'package:flutter/material.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FreezerListTile extends HookConsumerWidget {
  final Product product;
  const FreezerListTile({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stock = ref.watch(stockNotifierProvider).stock;
    return ListTile(
      onTap: () {
        //TODO needs implementation
      },
      leading: IconButton(
          onPressed: () async {
            await ref
                .read(stockNotifierProvider.notifier)
                .increaseFreezeritem(stock: stock, productID: product.id);
          },
          icon: const Icon(Icons.add)),
      title: Text(product.name),
      subtitle: Text(stock.freezerList[product.id].toString()),
      trailing: IconButton(
          onPressed: () async {
            await ref
                .read(stockNotifierProvider.notifier)
                .decreaseFreezeritem(stock: stock, productID: product.id);
          },
          icon: const Icon(Icons.remove)),
    );
  }
}