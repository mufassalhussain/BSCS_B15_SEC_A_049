import 'package:flutter/material.dart';
import 'package:crud_php/home.dart';
import 'package:flutter/services.dart';

class aboutus extends StatefulWidget {
  @override
  _aboutusState createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contact Us',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),

        // leading: IconButton(
        //  icon: Icon(Icons.menu),
        //onPressed: () {
        // NavDrawer();
        //},
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              SystemNavigator.pop();
            },
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
      body: Container(
          child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                width: 40.0,
                height: 10.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Text(
                'Developer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // SizedBox(
                  //   width: 20.0,
                  // ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 90,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 85,
                            backgroundImage:
                                AssetImage('assets/Mufassalprofile.png'),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                          height: 10.0,
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Mufassal Hussain',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                          height: 20.0,
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Phone:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Text(
                          '+923064672596',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                          height: 20.0,
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Email:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Text(
                          'hmufassal@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}
