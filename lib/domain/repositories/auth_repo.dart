import '../../core/ utils/network/api_result/api_result.dart';
import '../../data/models/request/login_request/login_request.dart';
import '../../data/models/response/login_response/login_response.dart';

abstract class AuthRepo {
  Future<ApiResult<LoginResponse>> signIn({required LoginRequest loginRequest});
}
