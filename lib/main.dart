import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retrofit_demo_4/postMethod/ApiLoginService/login_service.dart';

import 'Screen/LoginPage.dart';
import 'getMethod/apiService/api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<LoginService>(
      create: (context) => LoginService.create(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blueAccent),
        home: LoginPage(),
      ),
    );
  }
}
