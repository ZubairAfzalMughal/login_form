import 'package:flutter/material.dart';
import 'package:login_form/Component/fields.dart';
import 'package:login_form/Component/forgot_Password.dart';
import 'package:login_form/Component/header.dart';
import 'package:login_form/Component/login.dart';
import 'package:login_form/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBackGroundColor),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(size: size),
            Fields(
              title: "Email",
              icon: Icons.email,
              isSet: true,
            ),
            Fields(
              title: "Password",
              icon: Icons.lock,
              isSet: false,
            ),
            ForgotPassword(),
            SizedBox(
              height: 20.0,
            ),
            Login(size: size),
          ],
        ),
      ),
    );
  }
}
