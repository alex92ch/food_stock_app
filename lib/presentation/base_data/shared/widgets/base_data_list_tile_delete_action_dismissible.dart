import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_stock_app/application/overview/out_of_stock_notifier.dart';
import 'package:food_stock_app/application/shared/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/shared/freezer_item_notifier.dart';
import 'package:food_stock_app/application/shared/fridge_item_notifier.dart';
import 'package:food_stock_app/domain/shared/cupboard_item.dart';
import 'package:food_stock_app/domain/shared/freezer_item.dart';
import 'package:food_stock_app/domain/shared/fridge_item.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataListTileDeleteActionDismissible extends HookConsumerWidget {
  final int index;
  final List<Product> productList;
  final int duration;
  final String storagePlace;
  const BaseDataListTileDeleteActionDismissible({
    Key? key,
    required this.duration,
    required this.productList,
    required this.index,
    required this.storagePlace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fridgeItemStateNotifier =
        ref.read(fridgeItemNotifierProvider.notifier);
    final cupboardItemStateNotifier =
        ref.read(cupboardItemNotifierProvider.notifier);
    final freezerItemStateNotifier =
        ref.read(freezerItemNotifierProvider.notifier);
    final outOfStockNotifier = ref.read(outOfStockNotifierProvider.notifier);

    final scaffoldmessenger = ScaffoldMessenger.of(context);
    return DismissiblePane(
      closeOnCancel: true,
      dismissThreshold: 0.25,
      onDismissed: () async {
        scaffoldmessenger.clearSnackBars();
        storagePlace == "fridge"
            ? await fridgeItemStateNotifier
                .deleteFridgeItem(
                    fridgeItem: FridgeItem(product: productList[index]),
                    fridgeItemList:
                        productList.map((e) => FridgeItem(product: e)).toList())
                .then((value) async {
                await outOfStockNotifier.setOutOfSync();
              }).then((value) async {
                return scaffoldmessenger.showSnackBar(
                  SnackBar(
                    action: SnackBarAction(
                      label: 'Rückgängig',
                      onPressed: () async {
                        await fridgeItemStateNotifier
                            .undoDeleteFridgeItem(
                                fridgeItem:
                                    FridgeItem(product: productList[index]),
                                fridgeItemList: productList
                                    .map((e) => FridgeItem(product: e))
                                    .toList())
                            .then((value) async {
                          await outOfStockNotifier.setOutOfSync();
                        });
                      },
                    ),
                    content: const Text('In den Papierkorb verschoben.'),
                    margin: const EdgeInsets.all(10),
                    duration: Duration(seconds: duration),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10.0),
                    elevation: 6,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                );
              })
            : storagePlace == "freezer"
                ? await freezerItemStateNotifier
                    .deleteFreezerItem(
                        freezerItem: FreezerItem(product: productList[index]),
                        freezerItemList: productList
                            .map((e) => FreezerItem(product: e))
                            .toList())
                    .then((value) async {
                    await outOfStockNotifier.setOutOfSync();
                  }).then((value) async {
                    return scaffoldmessenger.showSnackBar(
                      SnackBar(
                        action: SnackBarAction(
                          label: 'Rückgängig',
                          onPressed: () async {
                            await freezerItemStateNotifier
                                .undoDeleteFreezerItem(
                                    freezerItem: FreezerItem(
                                        product: productList[index]),
                                    freezerItemList: productList
                                        .map((e) => FreezerItem(product: e))
                                        .toList())
                                .then((value) async {
                              await outOfStockNotifier.setOutOfSync();
                            });
                          },
                        ),
                        content: const Text('In den Papierkorb verschoben.'),
                        margin: const EdgeInsets.all(10),
                        duration: Duration(seconds: duration),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        elevation: 6,
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    );
                  })
                : await cupboardItemStateNotifier
                    .deleteCupboardItem(
                        cupboardItem: CupboardItem(product: productList[index]),
                        cupboardItemList: productList
                            .map((e) => CupboardItem(product: e))
                            .toList())
                    .then((value) async {
                    await outOfStockNotifier.setOutOfSync();
                  }).then((value) async {
                    return scaffoldmessenger.showSnackBar(
                      SnackBar(
                        action: SnackBarAction(
                          label: 'Rückgängig',
                          onPressed: () async {
                            await cupboardItemStateNotifier
                                .undoDeleteCupboardItem(
                                    cupboardItem: CupboardItem(
                                        product: productList[index]),
                                    cupboardItemList: productList
                                        .map((e) => CupboardItem(product: e))
                                        .toList())
                                .then((value) async {
                              await outOfStockNotifier.setOutOfSync();
                            });
                          },
                        ),
                        content: const Text('In den Papierkorb verschoben.'),
                        margin: const EdgeInsets.all(10),
                        duration: Duration(seconds: duration),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        elevation: 6,
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    );
                  });
      },
    );
  }
}
