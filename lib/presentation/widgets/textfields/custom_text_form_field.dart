import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  const CustomTextFormField(
      {Key? key, this.textEditingController, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
      ),
      controller: textEditingController,
    );
  }
}
