import 'package:basic_structure/presentation/cubits/auth/signin/signin_cubit.dart';
import 'package:basic_structure/presentation/pages/temp/cubit/screen1_cubit.dart';
import 'package:get_it/get_it.dart';

class AppInit {
  AppInit._();
  static late GetIt getIt;

  static initGetIt() {
    getIt = GetIt.I;
    getIt.registerFactory(() => SigninCubit());
    getIt.registerLazySingleton(() => Screen1Cubit());
  }
}
