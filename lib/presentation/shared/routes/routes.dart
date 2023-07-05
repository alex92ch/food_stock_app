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

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<CustomRoute> get routes => [
        CustomRoute(
            page: OverviewRoute.page,
            path: "/overview",
            initial: true,
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            page: StockRoute.page,
            path: "/stock",
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            page: BaseDataRoute.page,
            path: "/base_data",
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            page: NewProductRoute.page,
            path: "/new_product",
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            page: EditProductRoute.page,
            path: "/edit_product",
            transitionsBuilder: TransitionsBuilders.fadeIn),
      ];
}
