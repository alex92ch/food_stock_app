import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:food_stock_app/application/shared/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/shared/freezer_item_notifier.dart';
import 'package:food_stock_app/application/shared/fridge_item_notifier.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:food_stock_app/presentation/stock/widgets/stock_add_item_dialog.dart';
import 'package:food_stock_app/presentation/stock/widgets/stock_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StockPage extends HookConsumerWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    final fridgeItemProvider = ref.watch(fridgeItemNotifierProvider);
    final freezerItemProvider = ref.watch(freezerItemNotifierProvider);
    final cupboardItemProvider = ref.watch(cupboardItemNotifierProvider);
    int duration = 4;
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
                    : const StockList(storagePlace: "fridge");
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
                  failure: (_) => const Text("Error"),
                  inProgress: (_) {
                    ref
                        .read(freezerItemNotifierProvider.notifier)
                        .getFreezerItemList();
                    return const CircularProgressIndicator();
                  },
                  orElse: () {
                    return freezerItemProvider.freezerItemList.isEmpty
                        ? const Text("Freezer is empty")
                        : const StockList(storagePlace: "freezer");
                  })),
          const Text("Schrank"),
          Center(
              child: cupboardItemProvider.maybeMap(
                  initial: (_) {
                    ref
                        .read(cupboardItemNotifierProvider.notifier)
                        .getCupboardItemList();
                    return const CircularProgressIndicator();
                  },
                  failure: (_) => const Text("Error"),
                  inProgress: (_) {
                    ref
                        .read(cupboardItemNotifierProvider.notifier)
                        .getCupboardItemList();
                    return const CircularProgressIndicator();
                  },
                  orElse: () {
                    return cupboardItemProvider.cupboardItemList.isEmpty
                        ? const Text("Cupboard is empty")
                        : const StockList(storagePlace: "cupboard");
                  })),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              onPressed: () async {
                final scaffoldmessenger = ScaffoldMessenger.of(context);
                try {
                  ScanResult scanResult = await BarcodeScanner.scan();
                  switch (scanResult.type) {
                    case ResultType.Error:
                      scaffoldmessenger.clearSnackBars();
                      scaffoldmessenger.showSnackBar(
                        SnackBar(
                          content: Text('Fehler: ${scanResult.rawContent}'),
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
                      break;
                    case ResultType.Cancelled:
                      break;
                    case ResultType.Barcode:
                      fridgeItemProvider.fridgeItemList.any((fridgeItem) =>
                              fridgeItem.product.barcode ==
                              scanResult.rawContent)
                          ? await ref.read(fridgeItemNotifierProvider.notifier).increaseFridgeItem(
                              fridgeItem: fridgeItemProvider.fridgeItemList
                                  .where((fridgeItem) =>
                                      fridgeItem.product.barcode ==
                                      scanResult.rawContent)
                                  .first,
                              fridgeItemList: fridgeItemProvider.fridgeItemList)
                          : freezerItemProvider.freezerItemList.any(
                                  (freezerItem) =>
                                      freezerItem.product.barcode ==
                                      scanResult.rawContent)
                              ? await ref
                                  .read(freezerItemNotifierProvider.notifier)
                                  .increaseFreezerItem(
                                      freezerItem: freezerItemProvider
                                          .freezerItemList
                                          .where((freezerItem) =>
                                              freezerItem.product.barcode ==
                                              scanResult.rawContent)
                                          .first,
                                      freezerItemList:
                                          freezerItemProvider.freezerItemList)
                              : cupboardItemProvider.cupboardItemList.any(
                                      (cupboardItem) =>
                                          cupboardItem.product.barcode ==
                                          scanResult.rawContent)
                                  ? await ref
                                      .read(
                                          cupboardItemNotifierProvider.notifier)
                                      .increaseCupboardItem(
                                          cupboardItem: cupboardItemProvider
                                              .cupboardItemList
                                              .where((cupboardItem) => cupboardItem.product.barcode == scanResult.rawContent)
                                              .first,
                                          cupboardItemList: cupboardItemProvider.cupboardItemList)
                                  : showDialog(
                                      context: context,
                                      builder: (BuildContext dialogContext) {
                                        return StockAddItemDialog(
                                            barcode: scanResult.rawContent);
                                      });
                      break;
                  }
                } on Exception catch (e) {
                  scaffoldmessenger.clearSnackBars();
                  scaffoldmessenger.showSnackBar(
                    SnackBar(
                      content: Text('Fehler: $e'),
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
                }
              },
              child: const Icon(Icons.add),
            ),
            Menu(router: router)
          ],
        ),
      ),
    );
    // floatingActionButton: Menu(router: router));
  }
}
