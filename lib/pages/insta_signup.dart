import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lesson9_exercises/animations/animation.dart';
import 'package:lesson9_exercises/pages/home_page.dart';
import 'package:lesson9_exercises/pages/insta_signin.dart';

class SignupPage extends StatefulWidget {
  static const String id = "insta_signup";

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              ])),
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(30),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
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

              ///FullName
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
                          hintText: "FullName",
                          hintStyle: TextStyle(color: Colors.grey))),
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
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey))),
                ),
              ),

              ///Confirm password
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
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(color: Colors.grey))),
                ),
              ),

              ///Button Sign Up
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
                      "Sign up",
                      style: TextStyle(fontSize: 25, fontFamily: "Billabong"),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),

              ///Question
              FadeAnimation(
                  1.5,
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
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
                                      builder: (context) => SigninPage()));
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
