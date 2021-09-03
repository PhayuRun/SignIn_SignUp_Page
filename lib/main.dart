import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signin_signup_page/class/signIn_Page.dart';
import 'package:signin_signup_page/class/signUp_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/SignIn': (BuildContext context) => SignInPage(),
        '/SignUp': (BuildContext context) => SignUpPage()
      },
      home: SignUpPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
