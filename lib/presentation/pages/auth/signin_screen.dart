import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const String id = "SignInScreen";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(""),
        ],
      ),
    );
  }
}
