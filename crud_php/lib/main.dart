import 'dart:convert';

import 'package:crud_php/splash.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:crud_php/addoreditpage.dart';

//import 'package:dio/dio.dart';
void main() {
  runApp(MyApp());
}

Future getData() async {
  var url = Uri.parse('https://mufihosting.000webhostapp.com/read.php');
  var response = await http.get(url);

  return json.decode(response.body);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mufassal Crud App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splashscreen(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Mufassal PHP MYSQL CRUD',
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
              colors: [Colors.red, Colors.purple],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_chart),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Add(),
            ),
          );
        },
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    List list = snapshot.data;
                    return ListTile(
                      leading: GestureDetector(
                        child: Icon(
                          Icons.edit,
                          color: Colors.red,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Add(
                                list: list,
                                index: index,
                              ),
                            ),
                          );
                        },
                      ),
                      title: Text(list[index]['firstname']),
                      subtitle: Text(list[index]['phone']),
                      trailing: GestureDetector(
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onTap: () {
                          setState(() {
                            var url = Uri.parse(
                                'https://mufihosting.000webhostapp.com/delete.php');
                            http.post(url, body: {
                              'id': list[index]['id'],
                            });
                          });
                          debugPrint('delete Clicked');
                        },
                      ),
                    );
                  })
              : Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    valueColor: AlwaysStoppedAnimation(Colors.deepPurpleAccent),
                    minHeight: 1.8,
                  ),
                );
        },
      ),
    );
  }
}
