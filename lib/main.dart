import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'firebase_options.dart';
import 'presentation/home/home_page.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  const ProviderScope(
    child: MyApp(),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(routeProvider);
    return MaterialApp.router(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
      title: 'FoodStock',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: true, //TODO change to false
    );
  }
}
