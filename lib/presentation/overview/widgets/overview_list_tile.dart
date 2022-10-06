import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewListTile extends HookConsumerWidget {
  final Product product;
  final bool outOfStock;
  const OverviewListTile({
    Key? key,
    required this.product,
    required this.outOfStock,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return outOfStock
        ? ListTile(
            onTap: () {
              //TODO needs implementation
            },
            title: Text(product.name),
          )
        : ListTile(
            onTap: () {
              //TODO needs implementation
            },
            title: Text(product.name),
            subtitle: Text(product.amount.toString()),
          );
  }
}
