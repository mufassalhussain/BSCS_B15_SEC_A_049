import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(page2());
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
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page2()),
                );
              },
            ),
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
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Natures Light',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.admin_panel_settings_outlined,
                                      size: 180.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Cultural',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.face,
                                      size: 180.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Modern Life',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.home_work_outlined,
                                      size: 180.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Peoples',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.people_outline,
                                      size: 180.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Sand and Sun',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.wb_sunny_outlined,
                                      size: 180.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Health',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.local_hospital_outlined,
                                      size: 180.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              )),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.home_outlined),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => page2()),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.explore_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add_box_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.message_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.supervised_user_circle_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ))),
    );
  }
}

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Compose'),
          backgroundColor: Colors.grey[900],
          leading: IconButton(icon: Icon(Icons.arrow_left), onPressed: () {}),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 100.0,
                      color: Colors.tealAccent,
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                            child: Text(
                              '4 People',
                              style: new TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_right), onPressed: () {}),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.only(left: 100.0),
                    child: IconButton(
                        icon: Icon(Icons.supervised_user_circle_outlined),
                        iconSize: 100.0,
                        onPressed: () {}),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 10.0),
                    child: IconButton(
                        icon: Icon(Icons.supervised_user_circle_outlined),
                        iconSize: 100.0,
                        onPressed: () {}),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 10.0),
                    child: IconButton(
                        icon: Icon(Icons.supervised_user_circle_outlined),
                        iconSize: 100.0,
                        onPressed: () {}),
                  ),
                ],
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1000.0),
                    ),
                  ),
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Search peoples',
                  fillColor: Colors.grey[900],
                ),
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.home_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.explore_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add_box_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.message_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.supervised_user_circle_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
