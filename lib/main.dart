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
      body: Container(
        child: Center(child: Text("Hi, Everyone")),
      ),
    );
  }
}
