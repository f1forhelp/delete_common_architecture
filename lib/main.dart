import 'package:basic_structure/presentation/pages/temp/screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_init.dart';
import 'core/ utils/routes/app_routes.dart';

void main() {
  AppInit.initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context) => GestureDetector(
        onTap: () {
          var currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: MaterialApp(
          // onGenerateRoute: AppRoutes.generateRoutes,
          // initialRoute: AppRoutes.getInitialRoute(),
          home: Screen1(),
        ),
      ),
    );
  }
}
