import 'package:flutter/material.dart';
import 'package:quizapp_project/home.dart';
import 'package:quizapp_project/quizpage_mcqs.dart';
import 'package:quizapp_project/quiz_tf.dart';

class resultpage extends StatefulWidget {
  int marks;
  resultpage({Key key, @required this.marks}) : super(key: key);
  @override
  _resultpageState createState() => _resultpageState(marks);
}

String Quiz;
void Quiz_mcqs(int number) {
  if (number == 1) {
    Quiz = "mcqs";
  } else {
    Quiz = "tf";
  }
}

class _resultpageState extends State<resultpage> {
  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String message;
  String image;

  @override
  void initState() {
    if (marks < 20) {
      image = images[2];
      message = "You Should Try Hard..\n" + "You Scored $marks";
    } else if (marks < 35) {
      image = images[1];
      message = "You Can Do Better..\n" + "You Scored $marks";
    } else {
      image = images[0];
      message = "You Did Very Well..\n" + "You Scored $marks";
    }

    super.initState();
  }

  int marks;
  _resultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Result',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
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
              colors: [Colors.purple, Colors.blue],
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: Material(
                elevation: 10.0,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        child: Container(
                          width: 300.0,
                          height: 300.0,
                          child: ClipRect(
                            child: Image(
                              image: AssetImage(
                                image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 15.0,
                          ),
                          child: Center(
                            child: Text(
                              message,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: "Quando",
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: OutlineButton(
                    onPressed: () {
                      if (Quiz == "mcqs") {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          // in changelog 1 we will pass the langname name to ther other widget class
                          // this name will be used to open a particular JSON file
                          // for a particular language
                          builder: (context) => getjson("Mcqs"),
                        ));
                      } else if (Quiz == "tf") {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          // in changelog 1 we will pass the langname name to ther other widget class
                          // this name will be used to open a particular JSON file
                          // for a particular language
                          builder: (context) => getjson2("tf"),
                        ));
                      }
                    },
                    child: Text(
                      "Play Again",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                    splashColor: Colors.indigoAccent,
                  )),
                  Expanded(
                    child: OutlineButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                      },
                      child: Text(
                        "End Quiz",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 25.0,
                      ),
                      borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                      splashColor: Colors.indigoAccent,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
