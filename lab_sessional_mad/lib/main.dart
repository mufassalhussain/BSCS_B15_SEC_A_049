import 'package:flutter/material.dart';

void main() {
  runApp(page1());
}

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            title: Text('Explore'),
            leading: Icon(Icons.menu),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
          body: Container(
              child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                    child: Text(
                      'DISCOVER',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onPressed: () {},
                    color: Colors.blueGrey,
                    minWidth: 350.0,
                    height: 50.0,
                    textColor: Colors.white,
                  )),
                  Expanded(
                      child: FlatButton(
                    child: Text(
                      'ACTIVITIES',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onPressed: () {},
                    color: Colors.blueGrey,
                    minWidth: 350.0,
                    height: 50.0,
                    textColor: Colors.white,
                  )),
                ],
              ),
              Expanded(
                  child: GridView.count(
                children: <Widget>[
                  Container(
                    child: Card(
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    child: Card(
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    child: Card(
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    child: Card(
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    child: Card(
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    child: Card(
                      color: Colors.blue,
                    ),
                  ),
                ],
              )),
            ],
          ))),
    );
  }
}
