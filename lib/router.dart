import 'package:bike_compass/presentation/screens/home/home.dart';
import 'package:bike_compass/presentation/screens/settings/settings.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const String home = "/";
  static const String settings = "/settings";
  static const String test = "/test";
}

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case RouteNames.settings:
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );
      default:
        return null;
    }
  }
}
