import 'package:basic_structure/app_init.dart';
import 'package:basic_structure/presentation/pages/temp/cubit/screen1_cubit.dart';
import 'package:basic_structure/presentation/pages/temp/screen1.dart';
import 'package:basic_structure/presentation/widgets/buttons/custom_text_button.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Screen2"),
          Text("Counter ${AppInit.getIt<Screen1Cubit>().state.count}"),
          CustomTextButton(
            ontap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen1(),
                ),
              );
            },
            bgColor: Colors.pink,
            label: "Back",
          ),
        ],
      ),
    );
  }
}
