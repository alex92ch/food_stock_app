import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_stock_app/presentation/home/home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'routes.gr.dart';

final routeProvider = Provider<AppRouter>((ref) => AppRouter());

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
