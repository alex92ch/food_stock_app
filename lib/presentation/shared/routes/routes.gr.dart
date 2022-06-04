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
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const OverviewPage());
    },
    StockRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const StockPage());
    },
    BaseDataRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const BaseDataPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/overview', fullMatch: true),
        RouteConfig(OverviewRoute.name, path: '/overview'),
        RouteConfig(StockRoute.name, path: '/stock'),
        RouteConfig(BaseDataRoute.name, path: '/base_data')
      ];
}

/// generated route for
/// [OverviewPage]
class OverviewRoute extends PageRouteInfo<void> {
  const OverviewRoute() : super(OverviewRoute.name, path: '/overview');

  static const String name = 'OverviewRoute';
}

/// generated route for
/// [StockPage]
class StockRoute extends PageRouteInfo<void> {
  const StockRoute() : super(StockRoute.name, path: '/stock');

  static const String name = 'StockRoute';
}

/// generated route for
/// [BaseDataPage]
class BaseDataRoute extends PageRouteInfo<void> {
  const BaseDataRoute() : super(BaseDataRoute.name, path: '/base_data');

  static const String name = 'BaseDataRoute';
}
