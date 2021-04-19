import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quizapp_project/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Text(
          'Name : Mufassal Hussain\n Reg#: FA17-BCS-049',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.red,
            fontFamily: "Satisfy",
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
