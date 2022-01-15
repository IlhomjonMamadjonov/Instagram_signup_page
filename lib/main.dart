import 'package:flutter/material.dart';
import 'package:lesson9_exercises/pages/home_page.dart';
import 'package:lesson9_exercises/pages/insta_signin.dart';
import 'package:lesson9_exercises/pages/login_page.dart';
import 'package:lesson9_exercises/pages/signup_page.dart';
import 'package:lesson9_exercises/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontFamily: "Billabong", color: Colors.white, fontSize: 30))),
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        SplashPage.id: (context) => SplashPage(),
        SigninPage.id: (context) => SigninPage(),
        SignupPage.id: (context) => SignupPage(),
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (context) => LoginPage(),
      },
    );
  }
}
