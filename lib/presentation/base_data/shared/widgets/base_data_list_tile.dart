import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/presentation/base_data/shared/widgets/base_data_list_tile_delete_action.dart';
import 'package:food_stock_app/presentation/base_data/shared/widgets/base_data_list_tile_delete_action_dismissible.dart';

import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataListTile extends HookConsumerWidget {
  final List<Product> productList;
  final int index;
  const BaseDataListTile(
      {Key? key, required this.productList, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    return Slidable(
        key: ValueKey(productList[index].id),
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          dismissible: BaseDataListTileDeleteActionDismissible(
            key: ValueKey(productList[index].id),
            productList: productList,
            duration: 3,
            index: index,
          ),
          children: [
            BaseDataListTileDeleteAction(
              product: productList[index],
            )
          ],
        ),
        child: ListTile(
          title: Text(productList[index].name),
          subtitle: Text(productList[index].description),
          onTap: () async {
            router.push(EditProductRoute(product: productList[index]));
          },
        ));
  }
}
