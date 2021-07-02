import 'dart:async';
//import 'package:crud_php/main.dart';
import 'package:flutter/material.dart';
import 'package:crud_php/home.dart';

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
        builder: (context) => mainhome(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome to CRUD PHP MYSQL APP',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Image.asset(
              'assets/annimation.gif',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Name : Mufassal Hussain\n Reg#: FA17-BCS-049',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
