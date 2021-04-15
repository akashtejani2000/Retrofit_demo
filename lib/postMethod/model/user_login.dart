import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit_demo_4/error_heandler/dio_error_heandler.dart';

part 'user_login.g.dart';

@JsonSerializable()
class UserLogin {
  String userName;
  String password;

  UserLogin({this.userName, this.password});

  factory UserLogin.fromJson(Map<String, dynamic> json) => _$UserLoginFromJson(json);
  Map<String, dynamic> toJson() => _$UserLoginToJson(this);
}
