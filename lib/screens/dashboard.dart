import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String title;
  Dashboard({this.title});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
