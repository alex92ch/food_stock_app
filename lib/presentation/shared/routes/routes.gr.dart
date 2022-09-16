// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'routes.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    OverviewRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OverviewPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StockRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const StockPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BaseDataRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const BaseDataPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NewProductRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const NewProductPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EditProductRoute.name: (routeData) {
      final args = routeData.argsAs<EditProductRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: EditProductPage(
          key: args.key,
          product: args.product,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/overview',
          fullMatch: true,
        ),
        RouteConfig(
          OverviewRoute.name,
          path: '/overview',
        ),
        RouteConfig(
          StockRoute.name,
          path: '/stock',
        ),
        RouteConfig(
          BaseDataRoute.name,
          path: '/base_data',
        ),
        RouteConfig(
          NewProductRoute.name,
          path: '/new_product_page',
        ),
        RouteConfig(
          EditProductRoute.name,
          path: '/edit_product_page',
        ),
      ];
}

/// generated route for
/// [OverviewPage]
class OverviewRoute extends PageRouteInfo<void> {
  const OverviewRoute()
      : super(
          OverviewRoute.name,
          path: '/overview',
        );

  static const String name = 'OverviewRoute';
}

/// generated route for
/// [StockPage]
class StockRoute extends PageRouteInfo<void> {
  const StockRoute()
      : super(
          StockRoute.name,
          path: '/stock',
        );

  static const String name = 'StockRoute';
}

/// generated route for
/// [BaseDataPage]
class BaseDataRoute extends PageRouteInfo<void> {
  const BaseDataRoute()
      : super(
          BaseDataRoute.name,
          path: '/base_data',
        );

  static const String name = 'BaseDataRoute';
}

/// generated route for
/// [NewProductPage]
class NewProductRoute extends PageRouteInfo<void> {
  const NewProductRoute()
      : super(
          NewProductRoute.name,
          path: '/new_product_page',
        );

  static const String name = 'NewProductRoute';
}

/// generated route for
/// [EditProductPage]
class EditProductRoute extends PageRouteInfo<EditProductRouteArgs> {
  EditProductRoute({
    Key? key,
    required Product product,
  }) : super(
          EditProductRoute.name,
          path: '/edit_product_page',
          args: EditProductRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'EditProductRoute';
}

class EditProductRouteArgs {
  const EditProductRouteArgs({
    this.key,
    required this.product,
  });

  final Key? key;

  final Product product;

  @override
  String toString() {
    return 'EditProductRouteArgs{key: $key, product: $product}';
  }
}
