import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewListTile extends HookConsumerWidget {
  final Product product;
  const OverviewListTile({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () {
        //TODO needs implementation
      },
      title: Text(product.name),
    );
  }
}
