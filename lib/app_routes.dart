import 'package:flutter/material.dart';

class AppRoutes {
  static String getInitialRoute() {
    return "";
  }

  static Route<dynamic>? generateRoutes(RouteSettings? routeSettings) {
    final args = routeSettings?.arguments;

    switch (routeSettings?.name) {

      // default:
      //   return MaterialPageRoute(
      //     builder: (context) => const AskQuestionScreen(),
      //   );
    }
  }
}
