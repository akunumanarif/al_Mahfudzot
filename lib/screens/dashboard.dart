import 'package:al_mahfudzot/screens/dbAtas.dart';
import 'package:al_mahfudzot/screens/dbBawah.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  final String title;

  Dashboard({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Icon(
              Icons.filter_list,
              color: Colors.blue,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(
                Icons.more_vert,
                color: Colors.blue,
              ),
            )
          ],
          title: Text(
            "HOME",
            style: GoogleFonts.eczar(
                color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.white),
      body: Beranda(),
    );
  }
}

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Container(
      child: Column(
        children: [
          SizedBox(
            height: tinggi * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Interest",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "show all",
                  style: GoogleFonts.roboto(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: tinggi * 0.02,
          ),
          Padding(padding: const EdgeInsets.only(left: 10), child: DBAtas()),
          SizedBox(
            height: 50,
          ),
          DBBawah(),
        ],
      ),
    ));
  }
}
