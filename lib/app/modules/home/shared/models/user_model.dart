import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  UserModel({this.id, this.email, this.first_name, this.last_name, this.avatar});

  static UserModel fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  static Map<String, dynamic> toJson(UserModel user) => _$UserModelToJson(user);
}



