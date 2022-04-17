import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: '_id')
  String? id;
  String? token;
  String? name;
  String? createdAt;
  String? updatedAt;

  LoginResponse({
    this.id,
    this.token,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  @override
  String toString() {
    return 'LoginResponse(id: $id, token: $token, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
