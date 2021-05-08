import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:quizapp_project/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => null,
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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Text(
            'Welcome to Calculator App',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 85,
            backgroundImage: AssetImage('images/1_e_Loq49BI4WmN7o9ItTADg.gif'),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Text(
            'Name : Mufassal Hussain\n Reg#: FA17-BCS-049',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
        ],
      )),
    );
  }
}
