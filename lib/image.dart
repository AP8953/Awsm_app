import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/IMG20200215143013-01.jpeg",
      fit: BoxFit.cover,
    );
  }
}
