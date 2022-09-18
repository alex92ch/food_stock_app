import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/presentation/stock/add_stockitem/widgets/add_stockitem_list_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddStockitemList extends HookConsumerWidget {
  final Storageplace storageplace;
  const AddStockitemList({
    Key? key,
    required this.storageplace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsList = ref.watch(productsNotifierProvider);
    return SizedBox(
        width: 300,
        height: 300,
        child: ListView.builder(
            itemCount: storageplace  == Storageplace.fridge ? productsList.productList. : storageplace == Storageplace.freezer ? ://productList.length,
            itemBuilder: ((context, index) =>
                AddStockitemListTile(index: index, productList: productList)))

        //
        // Text(productsProvider.productList[index].name)),

        );
  }
}
