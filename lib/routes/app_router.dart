import 'package:flutter/material.dart';
import 'package:flutter_food/routes/app_routes.dart';
import 'package:flutter_food/screens/location/location_screen.dart';
import 'package:flutter_food/screens/screens.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(),
            settings: const RouteSettings(name: AppRoutes.homeScreen));
      case '/location':
        return MaterialPageRoute(
            builder: (_) => const LocationScreen(),
            settings: const RouteSettings(name: AppRoutes.locationScreen));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
