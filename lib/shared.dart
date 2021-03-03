import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'home_sqfl.dart';

class SharedPreference extends StatefulWidget {
  SharedPreference() : super();

  final String title = "Shared Preference";

  @override
  SharedPreferenceState createState() => SharedPreferenceState();
}

class SharedPreferenceState extends State<SharedPreference> {
  //
  String data = "";
  String nameKey = "_key_name";
  TextEditingController controller = TextEditingController();

  Future<String> saveData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(nameKey, controller.text);
  }

  Future<String> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(nameKey);
  }

  setData() {
    loadData().then((value) {
      setState(() {
        data = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: InputDecoration.collapsed(hintText: "Enter Name"),
            ),
            RaisedButton(
              color: Colors.yellowAccent,
              child: Text("SAVE NAME"),
              onPressed: () {
                saveData();
              },
            ),
            Text(
              data,
              style: TextStyle(fontSize: 20),
            ),
            RaisedButton(
              //color: Colors.deepPurple,
              child: Text("LOAD NAME"),
              onPressed: () {
                setData();
              },
            ),
            RaisedButton(
                //color: Colors.deepPurple,
                child: Text("SQFlite"),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Perosn(),
                    ))),
          ],
        ),
      ),
    );
  }
}
