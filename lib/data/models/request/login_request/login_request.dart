import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  String? email;

  LoginRequest({this.email});

  @override
  String toString() => 'LoginRequest(email: $email)';

  factory LoginRequest.fromJson(Map<String, dynamic> json) {
    return _$LoginRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
