import 'package:flutter/material.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewProductNamePage extends HookConsumerWidget {
  const NewProductNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    return Scaffold(
      body: const Center(
        child: Text("Product name"),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                //TODO add page
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
