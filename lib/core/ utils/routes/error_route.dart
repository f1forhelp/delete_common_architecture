import 'package:flutter/material.dart';

class ErrorRoute extends StatefulWidget {
  static const String id = "ErrorRoute";
  const ErrorRoute({Key? key}) : super(key: key);

  @override
  State<ErrorRoute> createState() => _ErrorRouteState();
}

class _ErrorRouteState extends State<ErrorRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              "You Have Entered a wrong Route",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
