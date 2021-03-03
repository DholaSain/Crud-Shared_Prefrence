import 'package:flutter/material.dart';

class Perosn extends StatefulWidget {
  @override
  _PerosnState createState() => _PerosnState();
}

class _PerosnState extends State<Perosn> {
  final TextEditingController fController = TextEditingController();
  final TextEditingController lController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Frist Name'),
              controller: fController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Last Name'),
              controller: lController,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.yellowAccent,
              child: Text("SAVE NAME"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
