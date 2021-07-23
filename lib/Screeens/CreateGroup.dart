import 'package:chatapp/CustomUI/AvatarCard.dart';
import 'package:chatapp/CustomUI/ContactCard.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateGroup extends StatefulWidget {
  CreateGroup({Key key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel> contacts = [
    ChatModel(name: "Tanmay", status: "A web devloper"),
    ChatModel(name: "Mihir", status: "A full stack devloper"),
    ChatModel(name: "Shivam", status: "Flutter devloper"),
    ChatModel(name: "Premal", status: "App devloper"),
    ChatModel(name: "Pinkesh", status: "Python devloper"),
    ChatModel(name: "Umang", status: "PHP devloper"),
    ChatModel(name: "Divy", status: "C++ devloper"),
    ChatModel(name: "Keyul", status: "Android devloper"),
    ChatModel(name: "Jay", status: "Python devloper"),
    ChatModel(name: "Himanshu", status: "PHP devloper"),
    ChatModel(name: "dheriy", status: "C++ devloper"),
    ChatModel(name: "Parth", status: "Android devloper"),
  ];
  List<ChatModel> groupmember = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "New Group",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              "Add Participants",
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
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
              itemCount: contacts.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    height: groupmember.length > 0 ? 90 : 10,
                  );
                }
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (contacts[index - 1].select == true) {
                        groupmember.remove(contacts[index - 1]);
                        contacts[index - 1].select = false;
                      } else {
                        groupmember.add(contacts[index - 1]);
                        contacts[index - 1].select = true;
                      }
                    });
                  },
                  child: ContactCard(
                    contact: contacts[index - 1],
                  ),
                );
              }),
          groupmember.length > 0
              ? Column(
                  children: <Widget>[
                    Container(
                        height: 75,
                        color: Colors.white,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: contacts.length,
                            itemBuilder: (contact, index) {
                              if (contacts[index].select == true) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      groupmember.remove(contacts[index]);
                                      contacts[index].select = false;
                                    });
                                  },
                                  child: AvatarCard(
                                    contact: contacts[index],
                                  ),
                                );
                              } else {
                                return Container();
                              }
                            })),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
