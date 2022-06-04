import 'package:flutter/material.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDataPage extends HookConsumerWidget {
  const BaseDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    return Scaffold(
      body: const Center(
        child: Text("BaseData"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        router.push(const HomeRoute());
      }),
    );
  }
}
