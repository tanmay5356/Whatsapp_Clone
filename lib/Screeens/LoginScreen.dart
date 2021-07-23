import 'package:chatapp/CustomUI/ButtonCard.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:chatapp/Screeens/Homescreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ChatModel sourceChat;
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "Tanmay",
      isGroup: false,
      currentMessage: "Hi Good Morning",
      time: "5:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "Shivam",
      isGroup: false,
      currentMessage: "Hi Shivam",
      time: "2:00",
      icon: "person.svg",
      id: 2,
    ),
    ChatModel(
      name: "Mihir",
      isGroup: false,
      currentMessage: "Hi Everyone ",
      time: "10:00",
      icon: "person.svg",
      id: 3,
    ),
    ChatModel(
      name: "Premal",
      isGroup: false,
      currentMessage: "Hi Shivam",
      time: "3:00",
      icon: "person.svg",
      id: 4,
    ),
    ChatModel(
      name: "Umang",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "10:00",
      icon: "person.svg",
      id: 5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  sourceChat = chatmodels.removeAt(index);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Homescreen(
                                chatmodels: chatmodels,
                                sourchat: sourceChat,
                              )));
                },
                child: ButtonCard(
                  name: chatmodels[index].name,
                  icon: Icons.person,
                ),
              )),
    );
  }
}
