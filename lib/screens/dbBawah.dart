import 'package:flutter/material.dart';
import 'package:al_mahfudzot/data/kelas.dart';

class DBBawah extends StatefulWidget {
  @override
  _DBBawahState createState() => _DBBawahState();
}

class _DBBawahState extends State<DBBawah> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 350,
      width: MediaQuery.of(context).size.width,
      child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: semuaKelas.map((kelasss) {
              return Center(
                child: Text(kelasss.fasl),
              );
            }).toList(),
          )),
    );
  }
}
