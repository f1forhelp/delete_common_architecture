import 'package:basic_structure/%20utils/constants/k_time.dart';
import 'package:basic_structure/data/datasources/auth/auth_source.dart';
import 'package:basic_structure/data/models/response/login_response/login_response.dart';
import 'package:basic_structure/data/models/request/login_request/login_request.dart';
import 'package:dio/dio.dart';

class AuthRemoteResource implements AuthSource {
  @override
  Future<LoginResponse> signIn({required LoginRequest loginRequest}) async {
    await Future.delayed(KTime.responseDelay);
    if (loginRequest.email == "email") {
      return LoginResponse(
          createdAt: "12-22-2020",
          id: "126172gjhjh",
          name: "Uncle John",
          token: "teookmkmknas",
          updatedAt: "12-33-4333");
    } else {
      throw DioError(
        requestOptions: RequestOptions(path: ""),
        type: DioErrorType.other,
      );
    }
  }
}
