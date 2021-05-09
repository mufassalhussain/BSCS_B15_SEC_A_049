import 'package:flutter/material.dart';
import 'package:my_calculator/record.dart';
import 'package:my_calculator/home.dart';

int flag = -1;
void flags1() {
  flag = 1;
}

class simplelevel extends StatefulWidget {
  @override
  _simplelevelState createState() => _simplelevelState();
}

class _simplelevelState extends State<simplelevel> {
  List<String> operators = ["+", "-", "×", "÷"];
  var value = "0";
  var value2 = "0";

  List<String> hist = [];
  List<String> calculations = [];

  String cal;
  var ph, po, pa;
  var history = "", output = "0", answer = 0.0;
  void record() {
    flags1();
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => History(operations: calculations),
    ));
  }

  void hst() {
    showAlertDialog5(context, ph, po);
  }

  void clear() {
    setState(() {
      history = "";
      output = "0";
      answer = 0.0;
      hist = [];
    });
  }

  void percent() {
    setState(() {
      answer = double.parse(value) + double.parse(value2);

      double percent = 0.0;
      //answer = double.parse(output);
      percent = answer / 100;

      history = getTape();
      answer = percent;
      hist.add(answer.toString());
      hist.add(" ÷ 100 = ");
      // hist.add(value2);
      equals();
    });
  }

  String getTape() {
    return hist.join(" ");
  }

  void equals() {
    setState(() {
      history = getTape();

      output = answer.toString();

      ph = history;
      po = output;
      //undooutput.add(po);
      //undohistory.add(ph);

      cal = history + output;
      // hist.insert(0, answer.toString());
      calculations.add(cal);
      showAlertDialog4(context, output);
      hist = [];
      //history = "";
    });
  }

  void add() {
    setState(() {
      answer = double.parse(value) + double.parse(value2);
      hist.add(value);
      hist.add(" + ");
      hist.add(value2);
      hist.add(" = ");
      history = getTape();
      equals();
    });
  }

  void sub() {
    setState(() {
      answer = double.parse(value) - double.parse(value2);
      hist.add(value);
      hist.add(" - ");
      hist.add(value2);
      hist.add(" = ");
      history = getTape();
      equals();
    });
  }

  void div() {
    setState(() {
      answer = double.parse(value) / double.parse(value2);
      hist.add(value);
      hist.add(" ÷ ");
      hist.add(value2);
      hist.add(" = ");
      history = getTape();
      equals();
    });
  }

  void mul() {
    setState(() {
      answer = double.parse(value) * double.parse(value2);
      hist.add(value);
      hist.add(" x ");
      hist.add(value2);
      hist.add(" = ");
      history = getTape();
      equals();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        //drawer: NavDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Simple Level',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
              ),
            ],
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => mainhome(),
                    ));
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.history),
                onPressed: () {
                  record();
                }),
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
        body: new Container(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Padding(
                    padding: new EdgeInsets.only(top: 25.0, right: 15.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Value 1'),
                      onChanged: (text) {
                        value = text;
                      },
                    )),
                new Padding(
                    padding: new EdgeInsets.only(
                        top: 15.0, right: 15.0, bottom: 15.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Value 2'),
                      onChanged: (text) {
                        value2 = text;
                      },
                    )),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new RawMaterialButton(
                          onPressed: clear,
                          child: new Icon(
                            Icons.block,
                            size: 35.0,
                          ),
                          constraints: BoxConstraints.tightFor(width: 140.0),
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0)),
                          elevation: 2.0,
                          fillColor: Colors.red[700],
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: percent,
                          child: new Text(
                            "%",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          constraints: BoxConstraints.tightFor(width: 140.0),
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0)),
                          elevation: 2.0,
                          fillColor: Colors.red[700],
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: div,
                          child: new Text(
                            "÷",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          constraints: BoxConstraints.tightFor(width: 140.0),
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0)),
                          elevation: 2.0,
                          fillColor: Colors.red[700],
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                        )
                      ]),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new RawMaterialButton(
                          onPressed: mul,
                          child: new Text(
                            "×",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          constraints: BoxConstraints.tightFor(width: 140.0),
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0)),
                          elevation: 2.0,
                          fillColor: Colors.red[700],
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: sub,
                          child: new Text(
                            "-",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          constraints: BoxConstraints.tightFor(width: 140.0),
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0)),
                          elevation: 2.0,
                          fillColor: Colors.red[700],
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: add,
                          child: new Text(
                            "+",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          constraints: BoxConstraints.tightFor(width: 140.0),
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0)),
                          elevation: 2.0,
                          fillColor: Colors.red[700],
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                        )
                      ]),
                ),
                new Padding(
                  padding:
                      new EdgeInsets.only(top: 15.0, left: 5.0, bottom: 6.0),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new RawMaterialButton(
                          onPressed: hst,
                          child: new Text(
                            "History",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          constraints: BoxConstraints.tightFor(width: 170.0),
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0)),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: equals,
                          child: new Text(
                            "=",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          constraints: BoxConstraints.tightFor(width: 170.0),
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0)),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                        )
                      ]),
                ),
              ]),
        ),
      ),
    );
  }
}

showAlertDialog5(BuildContext context, var history, var result) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Previous Result History"),
    content: Text("$history $result"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog4(BuildContext context, var result) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Result"),
    content: Text("$result"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
