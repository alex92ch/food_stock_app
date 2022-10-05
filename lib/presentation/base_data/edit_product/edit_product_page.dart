import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stock_app/application/overview/almost_out_of_stock_notifier.dart';
import 'package:food_stock_app/application/overview/out_of_stock_notifier.dart';
import 'package:food_stock_app/application/shared/cupboard_item_notifer.dart';
import 'package:food_stock_app/application/shared/freezer_item_notifier.dart';
import 'package:food_stock_app/application/shared/fridge_item_notifier.dart';
import 'package:food_stock_app/domain/shared/cupboard_item.dart';
import 'package:food_stock_app/domain/shared/fridge_item.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_amount.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_mass_unit.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_name.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_optionals.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_storage_place.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_threshold.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../domain/shared/freezer_item.dart';

class EditProductPage extends HookConsumerWidget {
  final Product product;
  final String storagePlace;
  const EditProductPage(
      {Key? key, required this.product, required this.storagePlace})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fridgeItemProvider = ref.watch(fridgeItemNotifierProvider);
    final freezerItemProvider = ref.watch(freezerItemNotifierProvider);
    final cupboardItemProvider = ref.watch(cupboardItemNotifierProvider);
    final router = ref.read(routeProvider);
    final product = useState(this.product);
    final storagePlace = useState(this.storagePlace);
    final formKey = useState(GlobalKey<FormState>());
    final pageController = usePageController();
    List<HookConsumerWidget> pages = [
      EditName(product),
      EditThreshold(product),
      EditAmount(product),
      EditMassUnit(product),
      EditStoragePlace(storagePlace),
      EditOptionals(product, formKey)
    ];
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${this.product.name} bearbeiten"),
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
                      List<FridgeItem> fridgeItemList =
                          List.from(fridgeItemProvider.fridgeItemList);
                      List<FreezerItem> freezerItemList =
                          List.from(freezerItemProvider.freezerItemList);
                      List<CupboardItem> cupboardItemList =
                          List.from(cupboardItemProvider.cupboardItemList);
                      this.storagePlace == "fridge"
                          ? await ref
                              .read(fridgeItemNotifierProvider.notifier)
                              .deleteFridgeItem(
                                  fridgeItem: FridgeItem(product: this.product),
                                  fridgeItemList: fridgeItemList)
                              .then((_) => fridgeItemList
                                  .remove(FridgeItem(product: this.product)))
                          : storagePlace.value == "freezer"
                              ? await ref
                                  .read(freezerItemNotifierProvider.notifier)
                                  .deleteFreezerItem(
                                      freezerItem:
                                          FreezerItem(product: this.product),
                                      freezerItemList: freezerItemList)
                                  .then((_) => freezerItemList.remove(
                                      FreezerItem(product: this.product)))
                              : await ref
                                  .read(cupboardItemNotifierProvider.notifier)
                                  .deleteCupboardItem(
                                    cupboardItem:
                                        CupboardItem(product: this.product),
                                    cupboardItemList: cupboardItemList,
                                  )
                                  .then((_) => cupboardItemList.remove(
                                      CupboardItem(product: this.product)));
                      storagePlace.value == "fridge"
                          ? await ref
                              .read(fridgeItemNotifierProvider.notifier)
                              .createFridgeItem(
                                  fridgeItem:
                                      FridgeItem(product: product.value),
                                  fridgeItemList: fridgeItemList)
                          : storagePlace.value == "freezer"
                              ? await ref
                                  .read(freezerItemNotifierProvider.notifier)
                                  .createFreezerItem(
                                      freezerItem:
                                          FreezerItem(product: product.value),
                                      freezerItemList: freezerItemList)
                              : await ref
                                  .read(cupboardItemNotifierProvider.notifier)
                                  .createCupboardItem(
                                    cupboardItem:
                                        CupboardItem(product: product.value),
                                    cupboardItemList: cupboardItemList,
                                  );
                      await ref
                          .read(outOfStockNotifierProvider.notifier)
                          .setOutOfSync();
                      await ref
                          .read(almostOutOfStockNotifierProvider.notifier)
                          .setOutOfSync();
                      FocusManager.instance.primaryFocus?.unfocus();
                      ref
                          .read(routeProvider)
                          .popUntilRouteWithName('BaseDataRoute');
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
