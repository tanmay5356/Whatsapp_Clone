import 'package:chatapp/Model/CountryModel.dart';
import 'package:flutter/material.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({Key key, this.setCountryData}) : super(key: key);
  final Function setCountryData;

  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List<CountryModel> contries = [
    CountryModel(name: "India", code: "+91", flag: "🇮🇳"),
    CountryModel(name: "Pakistan", code: "+92", flag: "🇵🇰"),
    CountryModel(name: "United States", code: "+1", flag: "🇺🇸"),
    CountryModel(name: "South Africa", code: "+27", flag: "🇿🇦"),
    CountryModel(name: "Afghanistan", code: "+93", flag: "🇦🇫"),
    CountryModel(name: "United Kingdom", code: "+44", flag: "🇬🇧"),
    CountryModel(name: "Italy", code: "+39", flag: "🇮🇹"),
    CountryModel(name: "Australia", code: "+61", flag: "🇦🇺"),
    CountryModel(name: "China", code: "+86", flag: "🇨🇳"),
    CountryModel(name: "United Arab Emirates", code: "+971", flag: "🇦🇪"),
    CountryModel(name: "Bangladesh", code: "+880", flag: "🇧🇩"),
    CountryModel(name: "Bhutan", code: "+975", flag: "🇧🇹"),
    CountryModel(name: "New Zealand", code: "+64", flag: "🇳🇿"),
    CountryModel(name: "Ireland", code: "+353", flag: "🇮🇪"),
    CountryModel(name: "Sri Lanka", code: "+94", flag: "🇱🇰"),
    CountryModel(name: "Canada", code: "+1", flag: "🇨🇦"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.teal,
          ),
        ),
        title: Text(
          "Choose a country",
          style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.w600,
              fontSize: 18,
              wordSpacing: 1),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.teal,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
          itemCount: contries.length,
          itemBuilder: (context, index) => card(contries[index])),
    );
  }

  Widget card(CountryModel country) {
    return InkWell(
      onTap: () {
        widget.setCountryData(country);
      },
      child: Card(
          margin: EdgeInsets.all(0.15),
          child: Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: <Widget>[
                Text(country.flag),
                SizedBox(
                  width: 15,
                ),
                Text(country.name),
                Expanded(
                  child: Container(
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(country.code),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
