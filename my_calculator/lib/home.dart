import 'package:flutter/material.dart';

class mainhome extends StatefulWidget {
  @override
  _mainhomeState createState() => _mainhomeState();
}

class _mainhomeState extends State<mainhome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        //drawer: NavDrawer(),
        appBar: AppBar(
          toolbarHeight: 70.0,
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Image.asset(
                'images/calculator--v2.png',
                fit: BoxFit.contain,
                height: 40.0,
                width: 40.0,
              ),
              Text(
                'Mufi\'s Calculator',
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

        body: Text('Hello There'),
      ),
    );
  }
}
