import 'package:get/route_manager.dart';
import 'package:flutter_boilerplate/config/custom_transitions.dart';
import 'package:flutter_boilerplate/modules/home/home_screen.dart';
import 'package:flutter_boilerplate/modules/second/second_screen.dart';

class Routes {
  static const String home = '/';
  static const String settings = '/settings';
  static const String second = '/second';

  static List<GetPage> pages = [
    GetPage(
      name: home,
      page: () => MyHomePage(
        title: 'Main',
      ),
      // transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 320),
      customTransition: CustomFadeTransition(),
    ),
    GetPage(
      name: second,
      page: () => SecondScreen(
        title: 'My Second Screen',
      ),
      // transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 320),
      customTransition: CustomFadeTransition(),
    )
  ];
}
