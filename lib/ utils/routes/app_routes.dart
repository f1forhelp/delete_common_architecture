import 'package:basic_structure/%20utils/routes/error_route.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String? getInitialRoute() {
    return ErrorRoute.id;
  }

  static Route<dynamic>? generateRoutes(RouteSettings? routeSettings) {
    final args = routeSettings?.arguments;

    switch (routeSettings?.name) {
      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorRoute(),
        );
    }
  }
}
