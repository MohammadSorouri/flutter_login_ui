import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routes = <String, WidgetBuilder>{
      LoginPage.tag: (context) => LoginPage(),
      HomePage.tag: (context) => HomePage(),
    };
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Nunito",
        primarySwatch: Colors.lightBlue,
      ),
      routes: routes,
      home: LoginPage(),
    );
  }
}
