import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: "hero",
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48,
        child: Image(image: AssetImage("assets/logo.png")),
      ),
    );
    return Container();
  }
}
