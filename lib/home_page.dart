import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: "hero",
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CircleAvatar(
          radius: 72,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/alucard.jpg"),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8),
      child: Text("Welcome Alucard",style: TextStyle(fontSize: 16,color: Colors.white),),
    );
    final lorem = Padding(
      padding: EdgeInsets.all(8),
      child: Text("Welcome Alucard",style: TextStyle(fontSize: 16,color: Colors.white),),
    );
    return Container();
  }
}
