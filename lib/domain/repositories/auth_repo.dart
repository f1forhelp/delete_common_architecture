import 'package:basic_structure/%20utils/network/api_result/api_result.dart';
import 'package:basic_structure/data/models/request/login_request/login_request.dart';
import 'package:basic_structure/data/models/response/login_response/login_response.dart';

abstract class AuthRepo {
  Future<ApiResult<LoginResponse>> signIn({required LoginRequest loginRequest});
}
