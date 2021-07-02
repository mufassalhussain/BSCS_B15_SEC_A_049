import 'package:crud_php/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:crud_php/main.dart';

void edit() {}

class Add extends StatefulWidget {
  final List list;
  final int index;
  Add({this.list, this.index});
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();

  bool editMode = false;
  addUpdateData() {
    if (editMode) {
      edit();
    } else {
      add();
    }
  }

  void edit() {
    var url = Uri.parse('https://mufihosting.000webhostapp.com/edit.php');
    http.post(url, body: {
      'id': widget.list[widget.index]['id'],
      'name': name.text,
      'email': email.text,
      'phone': phone.text,
      'address': address.text,
    });
  }

  void add() {
    var url = Uri.parse('https://mufihosting.000webhostapp.com/add.php');
    http.post(url, body: {
      'name': name.text,
      'email': email.text,
      'phone': phone.text,
      'address': address.text,
    });
  }

  Padding pad(String name, TextEditingController cons) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: cons,
        decoration: InputDecoration(
          labelText: name,
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.index != null) {
      editMode = true;
      name.text = widget.list[widget.index]['name'];
      email.text = widget.list[widget.index]['email'];
      phone.text = widget.list[widget.index]['phone'];
      address.text = widget.list[widget.index]['address'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add Data in MY SQL',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => mainhome()));
          },
        ),
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
      body: ListView(
        children: <Widget>[
          pad('Name', name),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: email,
              decoration: InputDecoration(
                labelText: "Email",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: phone,
              decoration: InputDecoration(
                labelText: "Phone",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          pad('Address', address),
          Padding(
            padding: EdgeInsets.all(8),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  addUpdateData();
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              color: Colors.red,
              child: Text(
                editMode ? 'Update Data' : 'Save Data',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
