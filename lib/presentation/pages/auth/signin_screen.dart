import 'package:basic_structure/%20utils/helper/ui_helper.dart';
import 'package:basic_structure/presentation/pages/dashboard/base_dashboard_screen.dart';
import 'package:basic_structure/presentation/widgets/buttons/custom_text_button.dart';
import 'package:basic_structure/presentation/widgets/textfields/custom_text_form_field.dart';
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
      body: UiHelper.horizontalPadding(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextFormField(
              hintText: "Enter User Name",
            ),
            CustomTextButton(
              ontap: () {
                Navigator.pushNamed(context, BaseDashboardScreen.id);
              },
              bgColor: Colors.pink.shade900,
              label: "Sign In",
              labelColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
