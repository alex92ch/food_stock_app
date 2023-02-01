import 'package:flutter/material.dart';
import 'package:food_stock_app/application/shared/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/shared/freezer_item_notifier.dart';
import 'package:food_stock_app/application/shared/fridge_item_notifier.dart';
import 'package:food_stock_app/presentation/base_data/shared/widgets/base_data_list_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataList extends HookConsumerWidget {
  final String storagePlace;
  const BaseDataList({Key? key, required this.storagePlace}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = storagePlace == "fridge"
        ? ref
            .watch(fridgeItemNotifierProvider)
            .fridgeItemList
            .map((e) => e.product)
            .toList()
        : storagePlace == "freezer"
            ? ref
                .watch(freezerItemNotifierProvider)
                .freezerItemList
                .map((e) => e.product)
                .toList()
            : ref
                .watch(cupboardItemNotifierProvider)
                .cupboardItemList
                .map((e) => e.product)
                .toList();
    return SizedBox(
        width: 300,
        height: 200,
        child: RefreshIndicator(
          onRefresh: () async {
            ref.read(fridgeItemNotifierProvider.notifier).getFridgeItemList();

            ref.read(freezerItemNotifierProvider.notifier).getFreezerItemList();
            ref
                .read(cupboardItemNotifierProvider.notifier)
                .getCupboardItemList();
          },
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: productList.length,
              itemBuilder: ((context, index) => BaseDataListTile(
                  index: index,
                  productList: productList,
                  storagePlace: storagePlace))),
        ));
  }
}
