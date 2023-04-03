import 'package:flutter/material.dart';
import 'package:rapaid/presentation/landing_screen/landing_screen.dart';

class AppRoutes {
  static const String landingScreen = '/landing_screen';

  static Map<String, WidgetBuilder> routes = {
    landingScreen: (context) => LandingScreen()
  };
}
