import 'package:flutter/material.dart';
import 'calculator.dart';
import 'hard.dart';
import 'simple.dart';

class History extends StatelessWidget {
  History({@required this.operations});

  final List<String> operations;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,

        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Record',
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
        //),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            if (flag == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => simplelevel(),
                  ));
            }

            if (flags == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => hardlevel(),
                  ));
            }
          },
        ),

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
      body: Center(
        child: _operationsList(operations),
      ),
    );
  }

  Widget _operationsList(List<String> operations) {
    return ListView.builder(
      itemCount: operations.length,
      itemBuilder: (BuildContext context, int i) {
        return ListTile(
          //  title: Text(operations[i]),
          onTap: () {
            // Navigator.pop(context, operations[i]);
          },
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red[800], width: 2.0),
                borderRadius: BorderRadius.circular(50)),
            child: Text(
              Calculator.parseString(operations[i]),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(5),
          ),
        );
      },
    );
  }
}
