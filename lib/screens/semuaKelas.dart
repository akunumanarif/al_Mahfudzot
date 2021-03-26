import 'package:flutter/material.dart';

class SemuaKelas extends StatefulWidget {
  @override
  _SemuaKelasState createState() => _SemuaKelasState();
}

class _SemuaKelasState extends State<SemuaKelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Text("Ini Semua Kelas"),
      )),
    );
  }
}
