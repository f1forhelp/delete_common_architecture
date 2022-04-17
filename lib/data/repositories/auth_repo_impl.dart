import 'package:basic_structure/data/models/response/login_response/login_response.dart';
import 'package:basic_structure/data/models/request/login_request/login_request.dart';
import 'package:basic_structure/domain/repositories/auth_repo.dart';

import '../../core/ utils/network/api_result/api_result.dart';
import '../../core/ utils/network/network_util/network_util.dart';

class AuthImpl implements AuthRepo {
  @override
  Future<ApiResult<LoginResponse>> signIn(
      {required LoginRequest loginRequest}) async {
    try {
      LoginResponse loginResponse = LoginResponse();
      return ApiResult.success(data: loginResponse);
    } catch (e) {
      return ApiResult.failure(error: NetworkUtil.getDioException(e));
    }
  }
}
