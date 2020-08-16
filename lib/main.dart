// ignore: avoid_web_libraries_in_flutter

import 'package:application/pages/home.dart';
import 'package:application/pages/login.dart';
import 'package:flutter/material.dart';

import 'Changenamecard.dart';
import 'drawer.dart';
import 'image.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Application",
      home: login(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        "/login": (context) => login(),
        "/home": (context) => Homepage(),
      },
    ),
  );
}
