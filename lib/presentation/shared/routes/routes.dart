import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/presentation/base_data/edit_product/edit_product_page.dart';
import 'package:food_stock_app/presentation/base_data/new_product/new_product_page.dart';
import 'package:food_stock_app/presentation/base_data/shared/base_data_page.dart';

import 'package:food_stock_app/presentation/overview/overview_page.dart';
import 'package:food_stock_app/presentation/stock/stock_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'routes.gr.dart';

final routeProvider = Provider<AppRouter>((ref) => AppRouter());

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <CustomRoute>[
    CustomRoute(
        page: OverviewPage,
        path: "/overview",
        initial: true,
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: StockPage,
        path: "/stock",
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: BaseDataPage,
        path: "/base_data",
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: NewProductPage,
        path: "/new_product",
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: EditProductPage,
        path: "/edit_product",
        transitionsBuilder: TransitionsBuilders.fadeIn),
  ],
)
class AppRouter extends _$AppRouter {}
