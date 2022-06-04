import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:food_stock_app/presentation/shared/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    return Scaffold(
      body: const Center(
        child: Text("Home"),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.menu,
        activeIcon: Icons.menu,
        spacing: 3,
        // openCloseDial: isDialOpen,
        childPadding: const EdgeInsets.all(5),
        spaceBetweenChildren: 4,
        useRotationAnimation: false,
        // dialRoot: customDialRoot
        //     ? (ctx, open, toggleChildren) {
        //         return ElevatedButton(
        //           onPressed: toggleChildren,
        //           style: ElevatedButton.styleFrom(
        //             primary: Colors.blue[900],
        //             padding: const EdgeInsets.symmetric(
        //                 horizontal: 22, vertical: 18),
        //           ),
        //           child: const Text(
        //             "Custom Dial Root",
        //             style: TextStyle(fontSize: 17),
        //           ),
        //         );
        //       }
        //     : null,
        // buttonSize:
        // label:

        // activeLabel: extend ? const Text("Close") : null,

        /// Transition Builder between label and activeLabel, defaults to FadeTransition.
        // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
        /// The below button size defaults to 56 itself, its the SpeedDial childrens size
        // childrenButtonSize: childrenButtonSize,
        // visible: visible,
        // direction: speedDialDirection,
        // switchLabelPosition: switchLabelPosition,

        /// If true user is forced to close dial manually
        // closeManually: closeManually,

        /// If false, backgroundOverlay will not be rendered.
        // renderOverlay: renderOverlay,
        // overlayColor: Colors.black,
        // overlayOpacity: 0.5,
        onOpen: () => debugPrint('OPENING DIAL'),
        onClose: () => debugPrint('DIAL CLOSED'),
        //  useRotationAnimation: useRAnimation,
        tooltip: 'Open Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        // foregroundColor: Colors.black,
        // backgroundColor: Colors.white,
        // activeForegroundColor: Colors.red,
        // activeBackgroundColor: Colors.blue,
        elevation: 8.0,
        // animationCurve: Curves.elasticInOut,
        isOpenOnStart: false,
        animationDuration: const Duration(milliseconds: 150),
        // shape: customDialRoot
        //     ? const RoundedRectangleBorder()
        //     : const StadiumBorder(),
        // childMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: [
          SpeedDialChild(
            child: const Icon(Icons.cabin),
            // backgroundColor: Colors.red,
            // foregroundColor: Colors.white,
            label: 'Stock',
            onTap: () {
              router.push(const StockRoute());
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.home),
            label: 'Home',
            onTap: () {
              router.push(const HomeRoute());
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.settings),
            label: 'Produkte',
            onTap: () {
              router.push(const BaseDataRoute());
            },
          ),
        ],
      ),
    );
  }
}
