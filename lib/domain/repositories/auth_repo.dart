import 'package:basic_structure/%20utils/network/api_result/api_result.dart';
import '../entities/request/login_request/login_request.dart';
import '../entities/response/login_response/login_response.dart';

abstract class AuthRepo {
  Future<ApiResult<LoginResponse>> signIn({required LoginRequest loginRequest});
}
