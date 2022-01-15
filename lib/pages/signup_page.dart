
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static const String id = "signup_page";

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Signup Page"),
      ),
    );
  }
}
