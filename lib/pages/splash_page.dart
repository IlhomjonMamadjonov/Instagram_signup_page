import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lesson9_exercises/animations/animation.dart';
import 'package:lesson9_exercises/pages/home_page.dart';
import 'package:lesson9_exercises/pages/insta_signin.dart';
import 'package:lesson9_exercises/pages/insta_signup.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void openPage() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, SigninPage.id);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FadeAnimation(
            1,
            Container(
              padding: EdgeInsets.all(30),
              child: Stack(
                children: [
                  Center(
                    child: Image(
                      height: 80,
                      width: 80,
                      image: AssetImage("assets/images/logoo.png"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "From Facebook",
                      style: TextStyle(fontSize: 20, color: Colors.black38),
                    ),
                  )
                ],
              ),
            )));
  }
}
