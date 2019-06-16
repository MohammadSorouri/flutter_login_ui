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
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
        //  Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );
    final forgotLabel = FlatButton(
      child: Text("Forgot Password?",style: TextStyle(color: Colors.black54),),

    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24,right: 24),
          children: <Widget>[
            logo,
            SizedBox(height: 48,),
            email,
            SizedBox(height: 8,),
            password,
            SizedBox(height: 24,),
            loginButton,
            forgotLabel,

          ],
        ),
      ),
    );
  }
}
