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
      final args = routeData.argsAs<NewProductRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: NewProductPage(
          args.barcode,
          key: args.key,
        ),
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
          storagePlace: args.storagePlace,
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
          path: '/new_product',
        ),
        RouteConfig(
          EditProductRoute.name,
          path: '/edit_product',
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
class NewProductRoute extends PageRouteInfo<NewProductRouteArgs> {
  NewProductRoute({
    required String barcode,
    Key? key,
  }) : super(
          NewProductRoute.name,
          path: '/new_product',
          args: NewProductRouteArgs(
            barcode: barcode,
            key: key,
          ),
        );

  static const String name = 'NewProductRoute';
}

class NewProductRouteArgs {
  const NewProductRouteArgs({
    required this.barcode,
    this.key,
  });

  final String barcode;

  final Key? key;

  @override
  String toString() {
    return 'NewProductRouteArgs{barcode: $barcode, key: $key}';
  }
}

/// generated route for
/// [EditProductPage]
class EditProductRoute extends PageRouteInfo<EditProductRouteArgs> {
  EditProductRoute({
    Key? key,
    required Product product,
    required String storagePlace,
  }) : super(
          EditProductRoute.name,
          path: '/edit_product',
          args: EditProductRouteArgs(
            key: key,
            product: product,
            storagePlace: storagePlace,
          ),
        );

  static const String name = 'EditProductRoute';
}

class EditProductRouteArgs {
  const EditProductRouteArgs({
    this.key,
    required this.product,
    required this.storagePlace,
  });

  final Key? key;

  final Product product;

  final String storagePlace;

  @override
  String toString() {
    return 'EditProductRouteArgs{key: $key, product: $product, storagePlace: $storagePlace}';
  }
}
