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
    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: "Email",
        contentPadding: EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        )
      ),
    );
    final password = TextField(
      obscureText: true,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Password",
          contentPadding: EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32)
          )
      ),
    );
    final loginButton = Material(
      shadowColor: Colors.lightBlue.shade100,
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(onPressed: (){},
        minWidth: 200,
        height: 42,
        color: Colors.lightBlueAccent,
        child: Text("Log In",style: TextStyle(color: Colors.white),),
      ),
    );
    final forgotLabel = FlatButton(
      child: Text("Forgot Password?",style: TextStyle(color: Colors.black54),),

    );

    return Container();
  }
}
