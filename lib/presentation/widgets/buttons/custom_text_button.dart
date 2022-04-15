import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  final String? label;
  final Color? bgColor;
  final Color? labelColor;
  final Function? ontap;
  const CustomTextButton(
      {Key? key, this.label, this.bgColor, this.labelColor, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (ontap != null) {
          ontap!();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(3.r),
        ),
        child: Text(
          label ?? "",
          style: TextStyle(color: labelColor, fontSize: 18.sp),
        ),
      ),
    );
  }
}
