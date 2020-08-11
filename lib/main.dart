import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Application", home: Homepage()));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Awsm_app"),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            color: Colors.black,
            width: 200,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: 105,
                  height: 150,
                  color: Colors.redAccent,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 105,
                  height: 150,
                  color: Colors.greenAccent,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 105,
                  height: 150,
                  color: Colors.yellowAccent,
                ),
              ],
            ),
          ),
        ));
  }
}
