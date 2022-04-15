import 'package:flutter/material.dart';

class BaseDashboardScreen extends StatefulWidget {
  static const String id = "BaseDashboardScreen";
  const BaseDashboardScreen({Key? key}) : super(key: key);

  @override
  State<BaseDashboardScreen> createState() => _BaseDashboardScreenState();
}

class _BaseDashboardScreenState extends State<BaseDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("Base Dashboard")],
      ),
    );
  }
}
