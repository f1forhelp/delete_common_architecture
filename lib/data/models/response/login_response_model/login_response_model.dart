import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  @JsonKey(name: '_id')
  String? id;
  String? token;
  String? name;
  String? createdAt;
  String? updatedAt;

  LoginResponseModel({
    this.id,
    this.token,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}



// {
//     "_id": "",
//     "token":"",
//     "name": "",
//     "createdAt":"",
//     "updatedAt":""
// }