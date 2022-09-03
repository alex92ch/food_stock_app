import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:food_stock_app/presentation/base_data/widgets/base_data_list_tile.dart';
import 'package:food_stock_app/presentation/base_data/widgets/base_data_list_tile_delete_action.dart';
import 'package:food_stock_app/presentation/base_data/widgets/base_data_list_tile_delete_action_dismissible.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataList extends HookConsumerWidget {
  final List<Product> productList;
  const BaseDataList({Key? key, required this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: 300,
        height: 300,
        child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: ((context, index) => Slidable(
                startActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  dismissible: BaseDataListTileDeleteActionDismissible(
                      product: productList[index], duration: 3),
                  children: [
                    BaseDataListTileDeleteAction(product: productList[index])
                  ],
                ),
                child: BaseDataListTile(product: productList[index]))))

        //
        // Text(productsProvider.productList[index].name)),

        );
  }
}
