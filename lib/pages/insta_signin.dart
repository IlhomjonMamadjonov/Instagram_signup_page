import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson9_exercises/animations/animation.dart';
import 'package:lesson9_exercises/pages/home_page.dart';
import 'package:lesson9_exercises/pages/insta_signup.dart';

class SigninPage extends StatefulWidget {
  static const String id = "insta";

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(64, 93, 230, 0.9),
              Color.fromRGBO(88, 81, 216, 1),
              Color.fromRGBO(131, 58, 180, 1),
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(225, 48, 108, 1),
              Color.fromRGBO(253, 29, 29, 0.9),
              Color.fromRGBO(245, 96, 64, 1),
              Color.fromRGBO(247, 119, 55, 0.8),
              // Color.fromRGBO(252, 175, 69, 1),



            ]
          )
        ),
        padding: EdgeInsets.all(30),
        width: double.infinity,
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///Instagram
              FadeAnimation(
                1,
                Text(
                  "Instagram",
                  style: TextStyle(fontSize: 35, fontFamily: "Billabong"),
                ),
              ),

              ///Email
              FadeAnimation(
                1.1,
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 48,
                  child: TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey))),
                ),
              ),

              ///Password
              FadeAnimation(
                1.3,
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 48,
                  child: TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey))),
                ),
              ),

              /// Button Sign In
              FadeAnimation(
                1.3,
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 48,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, HomePage.id);
                    },
                    shape: StadiumBorder(),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),

              ///Question
            ],
          ),
          FadeAnimation(
              1.5,
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
