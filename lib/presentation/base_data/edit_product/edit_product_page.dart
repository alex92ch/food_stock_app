import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_mass_unit.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_name.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_optionals.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_storage_place.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/widgets/edit_threshold.dart';
import 'package:food_stock_app/presentation/shared/menu_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EditProductPage extends HookConsumerWidget {
  final Product product;
  const EditProductPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsProvider = ref.watch(productsNotifierProvider);
    final router = ref.read(routeProvider);
    final product = useState(this.product);
    final formKey = useState(GlobalKey<FormState>());
    final pageController = usePageController();
    List<HookConsumerWidget> pages = [
      EditName(product),
      EditThreshold(product),
      EditMassUnit(product),
      EditStoragePlace(product),
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
              Text("${product.value.name} bearbeiten"),
              SizedBox(
                  height: 400,
                  child: Form(
                    key: formKey.value,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: 5,
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
                  onPressed: () {
                    if (formKey.value.currentState?.validate() ?? false) {
                      ref.read(productsNotifierProvider.notifier).createProduct(
                          product: product.value,
                          productList: productsProvider.map(
                            updateSuccess: ((_) => _.productList),
                            initial: ((_) => _.productList),
                            loadSuccess: ((_) => _.productList),
                            failure: ((_) => _.productList),
                            inProgress: ((_) => _.productList),
                            deleteSuccess: ((_) => _.productList),
                            createSuccess: ((_) => _.productList),
                            undoDeleteProduct: ((_) => _.productList),
                          ));
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
