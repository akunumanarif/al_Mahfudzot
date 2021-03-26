import 'package:flutter/material.dart';

class AppInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: GestureDetector(
        child: Icon(
          Icons.accessibility_new_sharp,
          size: 130,
        ),
      )),
    );
  }
}
