import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text(
            'QuizApp by Mufassal',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.purple, Colors.blue],
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FlatButton(
              minWidth: 70.0,
              height: 70.0,
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text(
                "Multiple Choice Questions",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.orange,
            ),
            SizedBox(
              height: 50.0,
            ),
            FlatButton(
              minWidth: 70.0,
              height: 70.0,
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: Text(
                "True/False Questions",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
