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
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
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
            path: '/', redirectTo: '/home', fullMatch: true),
        RouteConfig(HomeRoute.name, path: '/home'),
        RouteConfig(StockRoute.name, path: '/stock'),
        RouteConfig(BaseDataRoute.name, path: '/base_data')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
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
