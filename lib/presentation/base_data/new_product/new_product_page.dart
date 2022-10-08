import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stock_app/application/overview/almost_out_of_stock_notifier.dart';
import 'package:food_stock_app/application/overview/out_of_stock_notifier.dart';
import 'package:food_stock_app/application/shared/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/shared/freezer_item_notifier.dart';
import 'package:food_stock_app/application/shared/fridge_item_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/cupboard_item.dart';
import 'package:food_stock_app/domain/shared/freezer_item.dart';
import 'package:food_stock_app/domain/shared/fridge_item.dart';
import 'package:food_stock_app/presentation/base_data/new_product/widgets/new_amount.dart';
import 'package:food_stock_app/presentation/base_data/new_product/widgets/new_mass_unit.dart';
import 'package:food_stock_app/presentation/base_data/new_product/widgets/new_name.dart';
import 'package:food_stock_app/presentation/base_data/new_product/widgets/new_optionals.dart';
import 'package:food_stock_app/presentation/base_data/new_product/widgets/new_storage_place.dart';
import 'package:food_stock_app/presentation/base_data/new_product/widgets/new_threshold.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewProductPage extends HookConsumerWidget {
  final String barcode;
  const NewProductPage(this.barcode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fridgeItemProvider = ref.watch(fridgeItemNotifierProvider);
    final freezerItemProvider = ref.watch(freezerItemNotifierProvider);
    final cupboardItemProvider = ref.watch(cupboardItemNotifierProvider);
    final router = ref.read(routeProvider);
    final product = useState(Product(barcode: barcode));
    final storagePlace = useState("fridge");
    final formKey = useState(GlobalKey<FormState>());
    final pageController = usePageController();
    List<HookConsumerWidget> pages = [
      NewName(product),
      NewThreshold(product),
      NewAmount(product),
      NewMassUnit(product),
      NewStoragePlace(storagePlace),
      NewOptionals(
        product: product,
        formKey: formKey,
        fromStock: barcode != '',
      ),
    ];
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Neues Produkt"),
              SizedBox(
                  height: 400,
                  child: Form(
                    key: formKey.value,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: pages.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 60, right: 60, top: 100),
                          child: pages[index],
                        );
                      },
                    ),
                  )),
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
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.value.currentState?.validate() ?? false) {
                      storagePlace.value == "fridge"
                          ? await ref
                              .read(fridgeItemNotifierProvider.notifier)
                              .createFridgeItem(
                                  fridgeItem:
                                      FridgeItem(product: product.value),
                                  fridgeItemList:
                                      fridgeItemProvider.fridgeItemList)
                          : storagePlace.value == "freezer"
                              ? await ref
                                  .read(freezerItemNotifierProvider.notifier)
                                  .createFreezerItem(
                                      freezerItem:
                                          FreezerItem(product: product.value),
                                      freezerItemList:
                                          freezerItemProvider.freezerItemList)
                              : await ref
                                  .read(cupboardItemNotifierProvider.notifier)
                                  .createCupboardItem(
                                      cupboardItem:
                                          CupboardItem(product: product.value),
                                      cupboardItemList: cupboardItemProvider
                                          .cupboardItemList);
                      await ref
                          .read(outOfStockNotifierProvider.notifier)
                          .setOutOfSync();
                      await ref
                          .read(almostOutOfStockNotifierProvider.notifier)
                          .setOutOfSync();
                      FocusManager.instance.primaryFocus?.unfocus();
                      barcode == ''
                          ? ref
                              .read(routeProvider)
                              .popUntilRouteWithName('BaseDataRoute')
                          : ref
                              .read(routeProvider)
                              .popUntilRouteWithName('StockRoute');
                    } else {
                      debugPrint('validation failed');
                      //TODO handle failed validation
                    }
                  },
                  style: const ButtonStyle(),
                  child: const Text("Produkt Speichern"),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Menu(router: router),
      ),
    );
  }
}
