import 'package:food_stock_app/domain/shared/product.dart';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataListTileDeleteAction extends HookConsumerWidget {
  final Product product;

  const BaseDataListTileDeleteAction({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SlidableAction(
      onPressed: (_) async {},
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      icon: Icons.delete,
      label: 'Delete',
    );
  }
}
