import 'package:flutter/material.dart';
import 'package:food_stock_app/application/shared/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/shared/freezer_item_notifier.dart';
import 'package:food_stock_app/application/shared/fridge_item_notifier.dart';
import 'package:food_stock_app/presentation/base_data/shared/widgets/base_data_list.dart';

import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataPage extends HookConsumerWidget {
  const BaseDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    final fridgeItemProvider = ref.watch(fridgeItemNotifierProvider);
    final cupboardItemProvider = ref.watch(cupboardItemNotifierProvider);
    final freezerItemProvider = ref.watch(freezerItemNotifierProvider);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Kühlschrank"),
          Center(
            child: fridgeItemProvider.maybeMap(
              initial: (_) {
                ref
                    .read(fridgeItemNotifierProvider.notifier)
                    .getFridgeItemList();
                return const CircularProgressIndicator();
              },
              failure: (_) => const Text("Error"), //TODO needs error handling
              inProgress: (_) {
                ref
                    .read(fridgeItemNotifierProvider.notifier)
                    .getFridgeItemList();
                return const CircularProgressIndicator();
              },
              orElse: () {
                return fridgeItemProvider.fridgeItemList.isEmpty
                    ? const Text("Fridge is empty")
                    : const BaseDataList(storagePlace: "fridge");
              },
            ),
          ),
          const Text("Tiefkühler"),
          Center(
            child: freezerItemProvider.maybeMap(
              initial: (_) {
                ref
                    .read(freezerItemNotifierProvider.notifier)
                    .getFreezerItemList();
                return const CircularProgressIndicator();
              },
              failure: (_) => const Text("Error"), //TODO needs error handling
              inProgress: (_) {
                ref
                    .read(freezerItemNotifierProvider.notifier)
                    .getFreezerItemList();
                return const CircularProgressIndicator();
              },
              orElse: () {
                return freezerItemProvider.freezerItemList.isEmpty
                    ? const Text("Freezer is empty")
                    : const BaseDataList(storagePlace: "freezer");
              },
            ),
          ),
          const Text("Schrank"),
          Center(
            child: cupboardItemProvider.maybeMap(
              initial: (_) {
                ref
                    .read(cupboardItemNotifierProvider.notifier)
                    .getCupboardItemList();
                return const CircularProgressIndicator();
              },
              failure: (_) => const Text("Error"), //TODO needs error handling
              inProgress: (_) {
                ref
                    .read(cupboardItemNotifierProvider.notifier)
                    .getCupboardItemList();
                return const CircularProgressIndicator();
              },
              orElse: () {
                return cupboardItemProvider.cupboardItemList.isEmpty
                    ? const Text("Cupboard is empty")
                    : const BaseDataList(storagePlace: "cupboard");
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                router.push(const NewProductRoute());
              },
              child: const Icon(Icons.add),
            ),
            Menu(router: router)
          ],
        ),
      ),
      // floatingActionButton: Menu(router: router),
    );
  }
}
