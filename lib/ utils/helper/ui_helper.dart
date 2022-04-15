import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UiHelper {
  UiHelper._();
  static Widget horizontalPadding({Widget? child}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: child,
      );

  static Widget h1({Widget? child}) => SizedBox(
        height: 10.h,
      );
  static Widget h2({Widget? child}) => SizedBox(
        height: 20.h,
      );
  static Widget h3({Widget? child}) => SizedBox(
        height: 30.h,
      );
  static Widget h4({Widget? child}) => SizedBox(
        height: 40.h,
      );
}
