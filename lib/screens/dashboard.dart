import 'package:al_mahfudzot/fungsi/search.dart';
import 'package:al_mahfudzot/popupScreen/appInfo.dart';
import 'package:al_mahfudzot/popupScreen/popup.dart';
import 'package:al_mahfudzot/screens/dbAtas.dart';
import 'package:al_mahfudzot/screens/mahfudzot.dart';
import 'package:al_mahfudzot/screens/mufrodats.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final warna = Colors.grey[200];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> _pilihanAppbar = <Widget>[
      appBarHome(context),
      appBarInfo(context),
    ];

    List<Widget> _widgetOption = <Widget>[
      //SemuaKelas(),
      Beranda(),
      AppInformation(),
    ];

    void _pilihAppBar(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    void _onSelected(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: warna,
      appBar: _pilihanAppbar.elementAt(_selectedIndex),
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.school),
          //   label: "Kelas",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "Info",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onSelected,
      ),
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

    return Scaffold(
      body: Container(
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
      ),
    );
  }
}

Widget appBarHome(BuildContext context) {
  return AppBar(
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: IconButton(
          icon: Icon(Icons.filter_list),
          color: Colors.green,
          onPressed: () {
            showSearch(context: context, delegate: SearchFunction());
          },
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
      centerTitle: true,
      backgroundColor: Colors.grey[200]);
}

Widget appBarInfo(BuildContext context) {
  return AppBar(
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.green,
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
      ),
      backgroundColor: Colors.grey[200]);
}
