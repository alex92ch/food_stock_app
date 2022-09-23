import 'package:flutter/material.dart';
import 'package:food_stock_app/application/stock/stock_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockListTile extends HookConsumerWidget {
  final Storageplace storagePlace;
  final Product product;
  const StockListTile(
      {Key? key, required this.product, required this.storagePlace})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stock = ref.watch(stockNotifierProvider).stock;
    return ListTile(
      onTap: () {
        //TODO needs implementation
      },
      leading: IconButton(
          onPressed: () async {
            storagePlace == Storageplace.fridge
                ? await ref
                    .read(stockNotifierProvider.notifier)
                    .addFridgeitem(stock: stock, productID: product.id)
                : storagePlace == Storageplace.cupboard
                    ? await ref
                        .read(stockNotifierProvider.notifier)
                        .addCupboarditem(stock: stock, productID: product.id)
                    : await ref
                        .read(stockNotifierProvider.notifier)
                        .addFreezeritem(stock: stock, productID: product.id);
          },
          icon: const Icon(Icons.add)),
      title: Text(product.name),
      subtitle: storagePlace == Storageplace.fridge
          ? Text(stock.fridgeList[product.id].toString())
          : storagePlace == Storageplace.cupboard
              ? Text(stock.cupboardList[product.id].toString())
              : Text(stock.freezerList[product.id].toString()),
      trailing: IconButton(
          onPressed: () async {
            storagePlace == Storageplace.fridge
                ? await ref
                    .read(stockNotifierProvider.notifier)
                    .decreaseFridgeitem(stock: stock, productID: product.id)
                : storagePlace == Storageplace.cupboard
                    ? await ref
                        .read(stockNotifierProvider.notifier)
                        .decreaseCupboarditem(
                            stock: stock, productID: product.id)
                    : await ref
                        .read(stockNotifierProvider.notifier)
                        .decreaseFreezeritem(
                            stock: stock, productID: product.id);
          },
          icon: const Icon(Icons.remove)),
    );
  }
}
