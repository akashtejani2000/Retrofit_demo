// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLogin _$UserLoginFromJson(Map<String, dynamic> json) {
  return UserLogin(
    userName: json['userName'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$UserLoginToJson(UserLogin instance) => <String, dynamic>{
      'userName': instance.userName,
      'password': instance.password,
    };
