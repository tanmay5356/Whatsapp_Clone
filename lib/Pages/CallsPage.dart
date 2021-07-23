//import 'dart:html';

//import 'dart:html';

import "package:flutter/material.dart";

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add_call),
      ),
      body: Container(
        height: 1000.0,
        child: Card(
          //color: Colors.teal,
          child: Column(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Keyul",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("10:00 A.M."),
                trailing: Icon(
                  Icons.call_received,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 320.0,
                child: Divider(
                  height: 3.0,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Shivam",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("10:50 A.M."),
                trailing: Icon(
                  Icons.call_received,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 320.0,
                child: Divider(
                  height: 3.0,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Mihir",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
                subtitle: Text("12:00 P.M."),
                trailing: Icon(
                  Icons.call_missed,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                width: 320.0,
                child: Divider(
                  height: 3.0,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Parth",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
                subtitle: Text("12:52 P.M."),
                trailing: Icon(
                  Icons.call_missed,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                width: 320.0,
                child: Divider(
                  height: 3.0,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Jay",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                subtitle: Text("08:50 A.M."),
                trailing: Icon(
                  Icons.call_received,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 320.0,
                child: Divider(
                  height: 3.0,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Premal",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                subtitle: Text("2:40 P.M."),
                trailing: Icon(
                  Icons.call_received,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 320.0,
                child: Divider(
                  height: 3.0,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Divy",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                subtitle: Text("05:00 P.M."),
                trailing: Icon(
                  Icons.call_missed,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
