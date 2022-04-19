import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_class.freezed.dart';
part 'test_class.g.dart';

@freezed
class TestClass with _$TestClass {
  factory TestClass({
    @JsonKey(name: '_id') String? id,
    String? token,
    String? name,
    String? createdAt,
    String? updatedAt,
  }) = _TestClass;

  factory TestClass.fromJson(Map<String, dynamic> json) =>
      _$TestClassFromJson(json);
}
