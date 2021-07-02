import 'package:flutter/material.dart';
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
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
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
      'firstname': firstName.text,
      'lastname': lastName.text,
      'phone': phone.text,
      'address': address.text,
    });
  }

  void add() {
    var url = Uri.parse('https://mufihosting.000webhostapp.com/add.php');
    http.post(url, body: {
      'firstname': firstName.text,
      'lastname': lastName.text,
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
      firstName.text = widget.list[widget.index]['firstname'];
      lastName.text = widget.list[widget.index]['lastname'];
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
      body: ListView(
        children: <Widget>[
          pad('First Name', firstName),
          pad('Last Name', lastName),
          pad('Phone', phone),
          pad('Address', address),
          Padding(
            padding: EdgeInsets.all(8),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  addUpdateData();
                  debugPrint('Adding running');
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
                debugPrint('Clicked RaisedButton Button');
              },
              color: Colors.red,
              child: Text(
                editMode ? 'Update' : 'Save',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
