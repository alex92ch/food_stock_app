import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stock_app/presentation/new_product/new_mass_unit.dart';
import 'package:food_stock_app/presentation/new_product/new_name.dart';
import 'package:food_stock_app/presentation/new_product/new_optionals.dart';
import 'package:food_stock_app/presentation/new_product/new_threshold.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewProductPage extends HookConsumerWidget {
  const NewProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    const pages = [
      NewName(),
      NewThreshold(),
      NewMassUnit(),
      NewMassUnit(),
      NewOptionals()
    ];
    final pageController = usePageController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (_, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: pages[index],
                    ),
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: pages.length,
              onDotClicked: (page) {
                pageController.animateToPage(
                  page,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: Menu(router: router),
    );
  }
}
