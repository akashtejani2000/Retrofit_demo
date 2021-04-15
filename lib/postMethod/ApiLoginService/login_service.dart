import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit_demo_4/Screen/Homepage.dart';
import 'package:retrofit_demo_4/postMethod/model/user_login.dart';

part 'login_service.g.dart';

@RestApi(baseUrl: "http://slbs21.luckbyspin.in/API/")
abstract class LoginService {
  factory LoginService(Dio dio, {String baseUrl}) = _LoginService;

  static LoginService create() {
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onError: (error) {
      print(error.message);
    }, onResponse: (response) {
      print("<<=${response.statusCode}");
    }, onRequest: (request) {
      print('=>${request.uri}');
    }));
    return LoginService(dio);
  }

  @FormUrlEncoded()
  @POST('LoginDemo')
  Future<UserLogin> userRespond(@Field("username") String username, @Field("password") String password);
}
