import 'package:basic_structure/data/datasources/auth/auth_source.dart';
import 'package:basic_structure/data/models/response/login_response/login_response.dart';
import 'package:basic_structure/data/models/request/login_request/login_request.dart';

class AuthLocalSource implements AuthSource {
  @override
  Future<LoginResponse> signIn({required LoginRequest loginRequest}) {
    throw UnimplementedError();
  }
}
