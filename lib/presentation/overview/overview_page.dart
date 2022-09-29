import 'package:flutter/material.dart';
import 'package:food_stock_app/application/stock/almost_out_of_stock_notifier.dart';
import 'package:food_stock_app/application/stock/out_of_stock_notifier.dart';
import 'package:food_stock_app/presentation/overview/widgets/overview_list.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class OverviewPage extends HookConsumerWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    final outOfStockProvider = ref.watch(outOfStockNotifierProvider);
    final almostOutOfStockProvider =
        ref.watch(almostOutOfStockNotifierProvider);
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Out of stock"),
            Center(
              child: outOfStockProvider.maybeMap(
                initial: (_) {
                  ref
                      .read(outOfStockNotifierProvider.notifier)
                      .getOutOfStockList();
                  return const CircularProgressIndicator();
                },
                failure: (_) => const Text("Error"), //TODO needs error handling
                inProgress: (_) {
                  ref
                      .read(outOfStockNotifierProvider.notifier)
                      .getOutOfStockList();
                  return const CircularProgressIndicator();
                },
                orElse: () {
                  return outOfStockProvider.outOfStockList.isEmpty
                      ? const Text("No items out of stock")
                      : const OverviewList(
                          outOfStock: true,
                        );
                },
              ),
            ),
            const Text("Almost out of stock"),
            Center(
              child: outOfStockProvider.maybeMap(
                initial: (_) {
                  ref
                      .read(almostOutOfStockNotifierProvider.notifier)
                      .getAlmostOutOfStockList();
                  return const CircularProgressIndicator();
                },
                failure: (_) => const Text("Error"), //TODO needs error handling
                inProgress: (_) {
                  ref
                      .read(almostOutOfStockNotifierProvider.notifier)
                      .getAlmostOutOfStockList();
                  return const CircularProgressIndicator();
                },
                orElse: () {
                  return almostOutOfStockProvider.almostOutOfStockList.isEmpty
                      ? const Text("No items almost out of stock")
                      : const OverviewList(
                          outOfStock: false,
                        );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: Menu(router: router));
    // floatingActionButton: Menu(router: router));
  }
}
