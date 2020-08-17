// ignore: avoid_web_libraries_in_flutter

import 'package:application/pages/home.dart';
import 'package:application/pages/login.dart';
import 'package:application/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Changenamecard.dart';
import 'drawer.dart';
import 'image.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      home: Constants.prefs.getBool("LoggedIn") == true ? Homepage() : login(),
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
