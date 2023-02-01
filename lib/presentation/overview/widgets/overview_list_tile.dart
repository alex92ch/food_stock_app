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
        ? Card(
            elevation: 4,
            child: ListTile(
              onTap: () {
                //TODO needs implementation
              },
              title: Center(child: Text(product.name)),
            ),
          )
        : Card(
            elevation: 4,
            child: ListTile(
              onTap: () {
                //TODO needs implementation
              },
              title: Center(child: Text(product.name)),
              subtitle: Center(
                child: Text(
                  product.amount.toString(),
                ),
              ),
            ),
          );
  }
}
