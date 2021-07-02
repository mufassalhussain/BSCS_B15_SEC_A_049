import 'package:crud_php/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:crud_php/home.dart';
import 'package:crud_php/addoreditpage.dart';

import 'contacts.dart';

class mainhome extends StatefulWidget {
  @override
  _mainhomeState createState() => _mainhomeState();
}

class _mainhomeState extends State<mainhome> {
  List<String> images = [
    "assets/add.png",
    "assets/view.png",
  ];

  List<String> des = [
    "Read Data",
    "Add Data",
  ];
  Widget customcard(String langname, String image, String des) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: () {
          if (langname == "Read Data") {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ));
          } else if (langname == "Add Data") {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Add(),
                ));
          }
        },
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Alike"),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: NavDrawer(),
        appBar: AppBar(
          toolbarHeight: 70.0,
          centerTitle: true,
          title: Text(
            'PHP CRUD BY MUFASSAL ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
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
                colors: [Colors.red, Colors.purple],
              ),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            customcard("Add Data", images[0], des[0]),
            customcard("Read Data", images[1], des[1]),
          ],
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage('assets/view.png'))),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => mainhome())),
            },
          ),
          ListTile(
            leading: Icon(Icons.read_more),
            title: Text('Read Data'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home())),
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Add Data'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Add())),
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Contact Us'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => aboutus())),
            },
          ),
        ],
      ),
    );
  }
}
