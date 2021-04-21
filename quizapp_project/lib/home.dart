import 'package:flutter/material.dart';
import 'package:quizapp_project/quiz_tf.dart';
import 'package:quizapp_project/quizpage_mcqs.dart';
import 'package:quizapp_project/contacts.dart';

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
        drawer: NavDrawer(),
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
                'images/quizizz_icon2.png',
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
                    // in changelog 1 we will pass the langname name to ther other widget class
                    // this name will be used to open a particular JSON file
                    // for a particular language
                    builder: (context) => getjson("Mcqs")));
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
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    // in changelog 1 we will pass the langname name to ther other widget class
                    // this name will be used to open a particular JSON file
                    // for a particular language
                    builder: (context) => getjson2("tf")));
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
                    fit: BoxFit.contain,
                    image: AssetImage('images/quizizz_icon.png'))),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen())),
            },
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('Multiple Choice Questions'),
            onTap: () => {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  // in changelog 1 we will pass the langname name to ther other widget class
                  // this name will be used to open a particular JSON file
                  // for a particular language
                  builder: (context) => getjson("Mcqs"))),
            },
          ),
          ListTile(
            leading: Icon(Icons.question_answer_outlined),
            title: Text('True/False Questions'),
            onTap: () => {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  // in changelog 1 we will pass the langname name to ther other widget class
                  // this name will be used to open a particular JSON file
                  // for a particular language
                  builder: (context) => getjson2("tf"))),
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Contacts Us'),
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
