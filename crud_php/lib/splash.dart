import 'dart:async';
//import 'package:crud_php/main.dart';
import 'package:flutter/material.dart';
import 'package:crud_php/home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: mainhome(),
      duration: 10000,
      imageSize: 300,
      imageSrc: "assets/Mufassalprofile.png",
      text: "Mufassal Hussain \nFA17-BCS-049",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      colors: [
        Colors.amberAccent,
        Colors.tealAccent,
        Colors.deepOrange,
        Colors.red,
        Colors.green,
      ],
      backgroundColor: Colors.blue,
    );
  }
}
