import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(page1());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main '),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Page 1'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page2()),
              );
            },
          ),
        ),
      ),
    );
  }
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
                            color: Colors.red,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '          Natures Light',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
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
                            color: Colors.tealAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '          Cultural',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
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
                            color: Colors.amberAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '          Modern Life',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
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
                            color: Colors.green,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '          Peoples',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
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
                            color: Colors.teal,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '          Sand and Sun',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
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
                            color: Colors.blue,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '          Health',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
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
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Compose'),
          backgroundColor: Colors.grey[900],
          leading: IconButton(icon: Icon(Icons.arrow_left), onPressed: () {}),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
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
                              '3 Peoples',
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
                style: TextStyle(color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1000.0),
                    ),
                  ),
                  prefixIcon: new Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  labelText: 'Search peoples',
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.blueGrey,
                ),
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.supervised_user_circle_outlined),
                          color: Colors.black,
                          iconSize: 30.0,
                          onPressed: () {}),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Bilal',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 30.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '30 minutes ago',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.supervised_user_circle_outlined),
                          color: Colors.black,
                          iconSize: 30.0,
                          onPressed: () {}),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Arslan',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 30.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '1 hour ago',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.supervised_user_circle_outlined),
                          color: Colors.black,
                          iconSize: 30.0,
                          onPressed: () {}),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Ali',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 30.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '2 hour ago',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(1000.0),
                          ),
                        ),
                        prefixIcon: new Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        labelText: 'Send Message',
                        labelStyle: TextStyle(color: Colors.black),
                        fillColor: Colors.grey[900],
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                            size: 50.0,
                          ),
                        ),
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

class page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.share, color: Colors.black), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      '  MT.Cateline Hotel',
                      style: TextStyle(color: Colors.black, fontSize: 30.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "        USD:967 - New York",
                      style: TextStyle(color: Colors.black, fontSize: 10.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 450.0,
                height: 15.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "     About MT. CATLIN",
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "      Nunc justo eros. vehicula vef vehicula ut, lancinia a erat,\n      Nam fringilla eros... Nullam aliquam interdum ipsum et \n      tempor. Phasellus odio felis, scelerisque eu purus quis.\n",
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 450.0,
                height: 15.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 80.0,
                      color: Colors.red,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Icon(
                              Icons.wb_sunny,
                              color: Colors.black,
                              size: 50.0,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '22* \n sunny',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                          ),
                          Text(
                            '8.4',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15.0),
                          ),
                          Text(
                            '+6k votes',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15.0),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_right,
                              color: Colors.black,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 50.0,
                      color: Colors.red,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Ink(
                              height: 50.0,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: Border(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.wifi),
                                color: Colors.black,
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Expanded(
                            child: Ink(
                              height: 50.0,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: Border(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.local_parking_outlined),
                                color: Colors.black,
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Expanded(
                            child: Ink(
                              height: 50.0,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: Border(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.battery_unknown_sharp),
                                color: Colors.black,
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Expanded(
                            child: Ink(
                              height: 50.0,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: Border(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.nights_stay_outlined),
                                color: Colors.black,
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Expanded(
                            child: Ink(
                              height: 50.0,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: Border(),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.admin_panel_settings_outlined),
                                color: Colors.black,
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      '  Before you go',
                      style: TextStyle(color: Colors.black, fontSize: 25.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "          -Payment at checkout\n          -Wifi is is turned off by 12pm\n          -No Swimming after 10pm\n          -No More then 2 bags\n          -No Singing when Showring\n          -No Refunds",
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 450.0,
                height: 15.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
              FlatButton(
                child: Text(
                  'Book a room',
                  style: TextStyle(fontSize: 20.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                  side: BorderSide(
                    color: Colors.red,
                  ),
                ),
                color: Colors.red,
                minWidth: 350.0,
                height: 60.0,
                textColor: Colors.black,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
