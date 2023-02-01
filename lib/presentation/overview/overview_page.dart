import 'package:flutter/material.dart';
import 'package:food_stock_app/application/overview/almost_out_of_stock_notifier.dart';
import 'package:food_stock_app/application/overview/out_of_stock_notifier.dart';
import 'package:food_stock_app/presentation/overview/widgets/overview_list.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewPage extends HookConsumerWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final router = ref.read(routeProvider);
    final outOfStockProvider = ref.watch(outOfStockNotifierProvider);
    final almostOutOfStockProvider =
        ref.watch(almostOutOfStockNotifierProvider);
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(-2, -1),
              end: const Alignment(2, 1),
              colors: [theme.colorScheme.secondary, theme.colorScheme.primary],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Text(
                    "Einkaufsliste",
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Out of stock",
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
                Center(
                  child: Material(
                    elevation: 5,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondaryContainer,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: outOfStockProvider.maybeMap(
                          initial: (_) {
                            ref
                                .read(outOfStockNotifierProvider.notifier)
                                .getOutOfStockList();
                            return const CircularProgressIndicator();
                          },
                          failure: (_) =>
                              const Text("Error"), //TODO needs error handling
                          inProgress: (_) {
                            ref
                                .read(outOfStockNotifierProvider.notifier)
                                .getOutOfStockList();
                            return const CircularProgressIndicator();
                          },
                          orElse: () {
                            return outOfStockProvider
                                        .stockList.fridgeItemList.isEmpty &&
                                    outOfStockProvider
                                        .stockList.cupboardItemList.isEmpty &&
                                    outOfStockProvider
                                        .stockList.freezerItemList.isEmpty
                                ? const Text("No items out of stock")
                                : const OverviewList(
                                    outOfStock: true,
                                  );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Almost out of stock",
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
                Center(
                  child: Material(
                    elevation: 5,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondaryContainer,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: outOfStockProvider.maybeMap(
                          initial: (_) {
                            ref
                                .read(almostOutOfStockNotifierProvider.notifier)
                                .getAlmostOutOfStockList();
                            return const CircularProgressIndicator();
                          },
                          failure: (_) =>
                              const Text("Error"), //TODO needs error handling
                          inProgress: (_) {
                            ref
                                .read(almostOutOfStockNotifierProvider.notifier)
                                .getAlmostOutOfStockList();
                            return const CircularProgressIndicator();
                          },
                          orElse: () {
                            return almostOutOfStockProvider
                                        .stockList.fridgeItemList.isEmpty &&
                                    almostOutOfStockProvider
                                        .stockList.freezerItemList.isEmpty &&
                                    almostOutOfStockProvider
                                        .stockList.cupboardItemList.isEmpty
                                ? const Text("No items almost out of stock")
                                : const OverviewList(
                                    outOfStock: false,
                                  );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Menu(router: router));
  }
}
