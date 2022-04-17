import 'package:basic_structure/data/models/request/login_request/login_request.dart';
import 'package:basic_structure/data/models/response/login_response/login_response.dart';

abstract class AuthSource {
  Future<LoginResponse> signIn({LoginRequest loginRequest});
}
