import 'package:chatapp/CustomUI/ButtonCard.dart';
import 'package:chatapp/CustomUI/ContactCard.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:chatapp/Screeens/CreateGroup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelcetContact extends StatefulWidget {
  @override
  _SelcetContactState createState() => _SelcetContactState();
}

class _SelcetContactState extends State<SelcetContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contact = [
      ChatModel(name: "Tanmay", status: "A web devloper"),
      ChatModel(name: "Mihir", status: "A full stack devloper"),
      ChatModel(name: "Shivam", status: "Flutter devloper"),
      ChatModel(name: "Premal", status: "App devloper"),
      ChatModel(name: "Pinkesh", status: "Python devloper"),
      ChatModel(name: "Umang", status: "PHP devloper"),
      ChatModel(name: "Divy", status: "C++ devloper"),
      ChatModel(name: "Keyul", status: "Android devloper"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Select Contact",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              "256contacts",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              size: 26,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext) {
              return [
                PopupMenuItem(
                  child: Text("Invite a friend"),
                  value: "Invite a friend",
                ),
                PopupMenuItem(
                  child: Text("Contacts"),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text("Refresh"),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text("Help"),
                  value: "Help",
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: contact.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => CreateGroup()));
                },
                child: ButtonCard(
                  icon: Icons.group,
                  name: "New Group",
                ),
              );
            } else if (index == 1) {
              return ButtonCard(
                icon: Icons.person_add,
                name: "New Contact",
              );
            }
            return ContactCard(
              contact: contact[index - 2],
            );
          }),
    );
  }
}
