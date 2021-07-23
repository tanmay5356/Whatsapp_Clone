import 'package:chatapp/Model/CountryModel.dart';
import 'package:chatapp/NewScreen/CountryPage.dart';
import 'package:chatapp/NewScreen/OtpScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String counntryname = "India";
  String countrycode = "+91";
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Enter your phone number",
          style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.w700,
              fontSize: 18,
              wordSpacing: 1),
        ),
        centerTitle: true,
        actions: <Widget>[
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Text(
                "Whatsapp will send an sms to verify your number",
                style: TextStyle(fontSize: 13.5),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "What's my number?",
                style: TextStyle(fontSize: 12.8, color: Colors.cyan[800]),
              ),
              SizedBox(
                height: 15,
              ),
              countryCard(),
              SizedBox(
                height: 15,
              ),
              number(),
              Expanded(
                child: Container(),
              ),
              InkWell(
                onTap: () {
                  if (_controller.text.length < 10) {
                    showMydilogue1();
                  } else {
                    showMydilogue();
                  }
                },
                child: Container(
                  color: Colors.tealAccent[400],
                  height: 40,
                  width: 70,
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget countryCard() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (builder) => CountryPage(
                      setCountryData: setCountryData,
                    )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.teal,
              width: 1.8,
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  counntryname,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.teal,
              size: 28,
            )
          ],
        ),
      ),
    );
  }

  Widget number() {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: 38,
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: <Widget>[
          Container(
            width: 70,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.teal,
                  width: 1.8,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  "+",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  countrycode.substring(1),
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.teal,
                  width: 1.8,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width / 1.5 - 100,
            child: TextFormField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(8),
                  hintText: "Phone Number"),
            ),
          ),
        ],
      ),
    );
  }

  void setCountryData(CountryModel countryModel) {
    setState(() {
      counntryname = countryModel.name;
      countrycode = countryModel.code;
    });
    Navigator.pop(context);
  }

  Future<void> showMydilogue() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "We will be verfying your phone number",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(countrycode + "" + _controller.text,
                      style: TextStyle(fontSize: 14)),
                  Text("Is this ok, or would you like to edit the number?",
                      style: TextStyle(fontSize: 13.5)),
                ],
              ),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.teal,
                  ),
                  onPressed: () {
                    // Navigator.pop(context);
                  }),
              IconButton(
                  icon: Icon(
                    Icons.done,
                    color: Colors.teal,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => OtpScreen(
                                  countryCode: countrycode,
                                  number: _controller.text,
                                )));
                  })
              // TextButton(
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //     child: Text("Edit")),
              //  TextButton(
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //     child: Text("Ok")),
            ],
          );
        });
  }

  Future<void> showMydilogue1() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "There is no number you entered",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            actions: [
              // Button(
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //     child: Text("Ok")),
              IconButton(
                  icon: Icon(Icons.done),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          );
        });
  }
}
