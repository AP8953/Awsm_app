// ignore: avoid_web_libraries_in_flutter

import 'package:application/pages/home.dart';
import 'package:flutter/material.dart';

import 'Changenamecard.dart';
import 'drawer.dart';
import 'image.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Application",
      home: Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}
