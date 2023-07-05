// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    StockRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StockPage(),
      );
    },
    OverviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OverviewPage(),
      );
    },
    NewProductRoute.name: (routeData) {
      final args = routeData.argsAs<NewProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewProductPage(
          args.barcode,
          key: args.key,
        ),
      );
    },
    BaseDataRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BaseDataPage(),
      );
    },
    EditProductRoute.name: (routeData) {
      final args = routeData.argsAs<EditProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditProductPage(
          key: args.key,
          product: args.product,
          storagePlace: args.storagePlace,
        ),
      );
    },
  };
}

/// generated route for
/// [StockPage]
class StockRoute extends PageRouteInfo<void> {
  const StockRoute({List<PageRouteInfo>? children})
      : super(
          StockRoute.name,
          initialChildren: children,
        );

  static const String name = 'StockRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OverviewPage]
class OverviewRoute extends PageRouteInfo<void> {
  const OverviewRoute({List<PageRouteInfo>? children})
      : super(
          OverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'OverviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewProductPage]
class NewProductRoute extends PageRouteInfo<NewProductRouteArgs> {
  NewProductRoute({
    required String barcode,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          NewProductRoute.name,
          args: NewProductRouteArgs(
            barcode: barcode,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'NewProductRoute';

  static const PageInfo<NewProductRouteArgs> page =
      PageInfo<NewProductRouteArgs>(name);
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
/// [BaseDataPage]
class BaseDataRoute extends PageRouteInfo<void> {
  const BaseDataRoute({List<PageRouteInfo>? children})
      : super(
          BaseDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseDataRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditProductPage]
class EditProductRoute extends PageRouteInfo<EditProductRouteArgs> {
  EditProductRoute({
    Key? key,
    required Product product,
    required String storagePlace,
    List<PageRouteInfo>? children,
  }) : super(
          EditProductRoute.name,
          args: EditProductRouteArgs(
            key: key,
            product: product,
            storagePlace: storagePlace,
          ),
          initialChildren: children,
        );

  static const String name = 'EditProductRoute';

  static const PageInfo<EditProductRouteArgs> page =
      PageInfo<EditProductRouteArgs>(name);
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
