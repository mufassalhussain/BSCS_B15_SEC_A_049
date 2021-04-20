import 'package:flutter/material.dart';
import 'package:quizapp_project/quiz_mcqs.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 90.0,
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Image.asset(
                'images/quizizz_icon.png',
                fit: BoxFit.contain,
                height: 60.0,
                width: 60.0,
              ),
              Text(
                'Mufi\'s QuizApp',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
              ),
            ],
          ),
          // leading: IconButton(
          //  icon: Icon(Icons.menu),
          //onPressed: () {
          // NavDrawer();
          //},
          // ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
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
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => quizhomepage(),
                ));
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
                Navigator.pushNamed(context, '/second');
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
