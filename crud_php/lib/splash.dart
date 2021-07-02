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
      appBar: AppBar(
        toolbarHeight: 70.0,
        centerTitle: true,
        title: Text(
          'Welcome to CRUD PHP MYSQL APP',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        ),

        // leading: IconButton(
        //  icon: Icon(Icons.menu),
        //onPressed: () {
        // NavDrawer();
        //},
        // ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.red, Colors.blue],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'assets/annimation.gif',
            ),
          ),
          Expanded(
            child: Text(
              'Name : Mufassal Hussain\n Reg#: FA17-BCS-049',
              style: TextStyle(fontSize: 20.0, color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}
