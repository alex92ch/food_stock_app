import 'package:flutter/material.dart';
import 'package:food_stock_app/application/product_notifier.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataList extends HookConsumerWidget {
  final List<Product> productList;
  const BaseDataList({Key? key, required this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsProvider = ref.watch(productsNotifierProvider);
    return SizedBox(
      width: 300,
      height: 300,
      child: ListView.builder(
          itemCount: productList.length,
          itemBuilder: ((context, index) => ListTile(
                title: Text(productsProvider.productList[index].name),
              ))
          // Text(productsProvider.productList[index].name)),
          ),
    );
  }
}
