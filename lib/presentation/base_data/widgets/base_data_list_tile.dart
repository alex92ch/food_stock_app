import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:food_stock_app/presentation/base_data/widgets/base_data_list_tile_delete_action.dart';
import 'package:food_stock_app/presentation/base_data/widgets/base_data_list_tile_delete_action_dismissible.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataListTile extends HookConsumerWidget {
  final Product product;
  const BaseDataListTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.description),
      onTap: () {
        debugPrint("Listtile tapped");
      }, //TODO needs implementation
    );
  }
}
