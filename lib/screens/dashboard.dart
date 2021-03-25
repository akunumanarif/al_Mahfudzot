import 'package:al_mahfudzot/popupScreen/popup.dart';
import 'package:al_mahfudzot/screens/dbAtas.dart';
import 'package:al_mahfudzot/screens/dbBawah.dart';
import 'package:al_mahfudzot/screens/mufrodats.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final warna = Colors.grey[200];

    return Scaffold(
      backgroundColor: warna,
      appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Icon(
              Icons.filter_list,
              color: Colors.green,
            ),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 30),
                child: PopupMenuButton<IconMenu>(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.green,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  onSelected: (value) {
                    switch (value) {
                      case IconsMenu.info:
                        Navigator.pushNamed(context, '/info');
                        break;
                      case IconsMenu.share:
                        Navigator.pushNamed(context, '/share');
                        break;
                      default:
                    }
                  },
                  itemBuilder: (context) => IconsMenu.items
                      .map((item) => PopupMenuItem(
                            value: item,
                            child: ListTile(
                              leading: Icon(item.icon),
                              title: Text(item.text),
                            ),
                          ))
                      .toList(),
                ))
          ],
          title: Text(
            "Mahfudzot",
            style: GoogleFonts.merriweather(
                letterSpacing: 4,
                fontSize: 25,
                color: Colors.green[400],
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: warna),
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

    final warna = Colors.grey[200];

    return SafeArea(
        child: Container(
      color: warna,
      child: Column(
        children: [
          SizedBox(
            height: tinggi * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),
          ),
          SizedBox(
            height: tinggi * 0.02,
          ),
          Padding(padding: const EdgeInsets.only(left: 10), child: DBAtas()),
          SizedBox(
            height: 25,
          ),
          Container(
            //color: warna,
            height: 370,
            child: DefaultTabController(
              length: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: TabBar(
                        isScrollable: true,
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          Tab(
                            text: "Kelas",
                          ),
                          Tab(
                            text: "Mufrodat",
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: warna,
                      height: 200,
                      width: 300,
                      child: TabBarView(
                        children: [
                          Mahfudzot(),
                          Mufrodat(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
