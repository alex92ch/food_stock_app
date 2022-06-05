import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewProductPage extends HookConsumerWidget {
  const NewProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    final _pageController = usePageController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 5,
                itemBuilder: (_, index) {
                  return Center(
                    child: SizedBox(
                      child: Text(index.toString()),
                    ),
                  );
                },
              ),
            ),
            SmoothPageIndicator(controller: _pageController, count: 5)
          ],
        ),
      ),
      floatingActionButton: Menu(router: router),
    );
  }
}
