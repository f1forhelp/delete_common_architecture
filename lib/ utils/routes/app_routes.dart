import 'package:basic_structure/%20utils/routes/error_route.dart';
import 'package:basic_structure/presentation/pages/auth/signin_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String? getInitialRoute() {
    return SignInScreen.id;
  }

  static Route<dynamic>? generateRoutes(RouteSettings? routeSettings) {
    final args = routeSettings?.arguments;

    switch (routeSettings?.name) {
      case SignInScreen.id:
        {
          return MaterialPageRoute(
            builder: (context) => const SignInScreen(),
          );
        }
      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorRoute(),
        );
    }
  }
}
