import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_stock_app/presentation/base_data/base_data_page.dart';
import 'package:food_stock_app/presentation/home/home_page.dart';
import 'package:food_stock_app/presentation/stock/stock_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'routes.gr.dart';

final routeProvider = Provider<AppRouter>((ref) => AppRouter());

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, path: "/home", initial: true),
    AutoRoute(page: StockPage, path: "/stock", initial: true),
    AutoRoute(page: BaseDataPage, path: "/base_data", initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
