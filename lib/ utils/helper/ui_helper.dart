import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UiHelper {
  UiHelper._();
  static Widget horizontalPadding({Widget? child}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: child,
      );
}
