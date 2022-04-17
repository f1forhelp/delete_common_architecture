import 'package:basic_structure/%20utils/helper/ui_helper.dart';
import 'package:basic_structure/app_init.dart';
import 'package:basic_structure/presentation/cubits/auth/signin/signin_cubit.dart';
import 'package:basic_structure/presentation/pages/dashboard/base_dashboard_screen.dart';
import 'package:basic_structure/presentation/widgets/buttons/custom_text_button.dart';
import 'package:basic_structure/presentation/widgets/textfields/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  static const String id = "SignInScreen";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SigninCubit>(
      create: (context) => AppInit.getIt<SigninCubit>(),
      child: BlocListener<SigninCubit, SigninState>(
        listener: (context, state) {
          //Listen For state change
        },
        child: Scaffold(
          body: UiHelper.horizontalPadding(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextFormField(
                  hintText: "Enter User Name",
                ),
                UiHelper.h4(),
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
        ),
      ),
    );
  }
}
