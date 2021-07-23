import 'package:chatapp/CustomUI/StatusPage/HealOwnStatus.dart';
import 'package:chatapp/CustomUI/StatusPage/OthersStatus.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key key}) : super(key: key);
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.blueGrey[900],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
            child: Icon(Icons.camera_alt),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //SizedBox(
            //height: 10,
            //  ),
            HeadOwnStatus(),
            label("Recent updates"),
            OthersStatus(
              name: "Divy Patel",
              imagename: "assets/2.jpg",
              time: "01:23",
              isSeen: false,
              statusNum: 15,
            ),
            OthersStatus(
              name: "Mihir",
              imagename: "assets/3.jpg",
              time: "02:20",
              isSeen: false,
              statusNum: 5,
            ),
            OthersStatus(
              name: "Shivam ",
              imagename: "assets/4.jpg",
              time: "12:23",
              isSeen: false,
              statusNum: 3,
            ),
            label("Viewed updates"),
            OthersStatus(
              name: "Pinkesh ",
              imagename: "assets/2.jpg",
              time: "02:13",
              isSeen: true,
              statusNum: 3,
            ),
            OthersStatus(
              name: "Premal",
              imagename: "assets/3.jpg",
              time: "10:20",
              isSeen: true,
              statusNum: 2,
            ),
            OthersStatus(
              name: "Jay",
              imagename: "assets/4.jpg",
              time: "08:29",
              isSeen: true,
              statusNum: 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String labelname) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          labelname,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
