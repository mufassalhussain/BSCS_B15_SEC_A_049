import 'package:flutter/material.dart';
import 'package:my_calculator/record.dart';

int flag = -1;
void flags() {
  flag = 0;
}

class simplelevel extends StatefulWidget {
  @override
  _simplelevelState createState() => _simplelevelState();
}

class _simplelevelState extends State<simplelevel> {
  List<String> operators = ["+", "-", "×", "÷"];
  List<String> hist = [];
  List<String> calculations = [];
  int hc = 0;
  String cal;
  var ph, po, pa;
  var history = "", output = "", answer = 0.0;
  void record() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => History(operations: calculations),
    ));
  }

  void hst() {
    showAlertDialog5(context, ph, po);
  }

  void click1() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "1";
      } else {
        output = "1";
      }
    });
  }

  void click2() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "2";
      } else {
        output = "2";
      }
    });
  }

  void click3() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "3";
      } else {
        output = "3";
      }
    });
  }

  void click4() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "4";
      } else {
        output = "4";
      }
    });
  }

  void click5() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "5";
      } else {
        output = "5";
      }
    });
  }

  void click6() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "6";
      } else {
        output = "6";
      }
    });
  }

  void click7() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "7";
      } else {
        output = "7";
      }
    });
  }

  void click8() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "8";
      } else {
        output = "8";
      }
    });
  }

  void click9() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "9";
      } else {
        output = "9";
      }
    });
  }

  void click0() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "0";
      } else {
        output = "0";
      }
    });
  }

  void clickDot() {
    setState(() {
      output += ".";
    });
  }

  void clear() {
    setState(() {
      history = "";
      output = "0";
      answer = 0.0;
      hist = [];
    });
  }

  void sign() {
    setState(() {
      if (double.parse(output) == 0.0) {
      } else {
        if (output[0] == '-') {
          output = output.substring(1);
        } else {
          output = '-' + output;
        }
      }
    });
  }

  void percent() {
    setState(() {
      double percent = 0.0;
      percent = answer / 100;
      history = answer.toString() + " ÷ 100 =";
      output = percent.toString();
    });
  }

  String getTape() {
    return hist.join(" ");
  }

  bool isOperator(String s) {
    return (operators.contains(s));
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.parse(s) != null;
  }

  void equals() {
    setState(() {
      if (hist.length <= 3) {
        hist.add(output);
      }
      history = getTape() + " =";
      var opr1, opr2, op;
      opr1 = double.parse(hist.removeAt(0));
      op = hist.removeAt(0);
      opr2 = double.parse(hist.removeAt(0));
      switch (op) {
        case "+":
          answer = opr1 + opr2;
          break;
        case "-":
          answer = opr1 - opr2;
          break;
        case "×":
          answer = opr1 * opr2;
          break;
        case "÷":
          answer = opr1 / opr2;
          break;
        default:
      }
      output = answer.toString();

      ph = history;
      po = output;
      cal = history + output;
      hist.insert(0, answer.toString());
      calculations.add(cal);
      showAlertDialog4(context, output);
    });
  }

  void add() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("+");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void sub() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("-");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void div() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("÷");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void mul() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("×");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
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
              icon: Icon(Icons.history),
              onPressed: () {
                record();
              }),
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
                  child: new Text(
                    "$history",
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                new Padding(
                  padding:
                      new EdgeInsets.only(top: 15.0, right: 15.0, bottom: 15.0),
                  child: new Text(
                    "$output",
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
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
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.red[700],
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: sign,
                          child: new Text(
                            "±",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.red[700],
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: percent,
                          child: new Text(
                            "%",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.red[700],
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: div,
                          child: new Text(
                            "÷",
                            style: TextStyle(
                                fontSize: 35.0,
                                color: Colors.red[700],
                                fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.white,
                          highlightColor: Colors.red[100],
                          splashColor: Colors.red[100],
                          padding: const EdgeInsets.all(15.0),
                        )
                      ]),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new RawMaterialButton(
                          onPressed: click1,
                          child: new Text(
                            "1",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: click2,
                          child: new Text(
                            "2",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: click3,
                          child: new Text(
                            "3",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: mul,
                          child: new Text(
                            "×",
                            style: TextStyle(
                                fontSize: 35.0,
                                color: Colors.red[700],
                                fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.white,
                          highlightColor: Colors.red[100],
                          splashColor: Colors.red[100],
                          padding: const EdgeInsets.all(15.0),
                        )
                      ]),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new RawMaterialButton(
                          onPressed: click4,
                          child: new Text(
                            "4",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: click5,
                          child: new Text(
                            "5",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: click6,
                          child: new Text(
                            "6",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: sub,
                          child: new Text(
                            "-",
                            style: TextStyle(
                                fontSize: 35.0,
                                color: Colors.red[700],
                                fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.white,
                          highlightColor: Colors.red[100],
                          splashColor: Colors.red[100],
                          padding: const EdgeInsets.all(15.0),
                        )
                      ]),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new RawMaterialButton(
                          onPressed: click7,
                          child: new Text(
                            "7",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: click8,
                          child: new Text(
                            "8",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: click9,
                          child: new Text(
                            "9",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: add,
                          child: new Text(
                            "+",
                            style: TextStyle(
                                fontSize: 35.0,
                                color: Colors.red[700],
                                fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.white,
                          highlightColor: Colors.red[100],
                          splashColor: Colors.red[100],
                          padding: const EdgeInsets.all(15.0),
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
                          onPressed: click0,
                          child: new Text(
                            "0",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: hst,
                          child: new Text(
                            "H",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: clickDot,
                          child: new Text(
                            ".",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black45,
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new RawMaterialButton(
                          onPressed: equals,
                          child: new Text(
                            "=",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.w500),
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.red[700],
                          padding: const EdgeInsets.all(15.0),
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
