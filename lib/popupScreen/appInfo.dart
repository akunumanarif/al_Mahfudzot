import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          top: 10,
        ),
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 70,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    minRadius: 40,
                    backgroundImage: AssetImage("assets/avatararab.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Selamat Datang \ndi Aplikasi Mahfudzot",
                        style: GoogleFonts.enriqueta(fontSize: 19)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.menu_book_outlined,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text("Tutorial Penggunaan",
                        style: GoogleFonts.enriqueta(fontSize: 15)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 10,
              ),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: popUpVersionApp,
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.android_outlined,
                      size: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text("Version 1.0.0",
                          style: GoogleFonts.enriqueta(fontSize: 15)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.app_settings_alt_outlined,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text("Term of Services",
                        style: GoogleFonts.enriqueta(fontSize: 15)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text("About / Informasi Aplikasi",
                        style: GoogleFonts.enriqueta(fontSize: 15)),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

Widget popUpVersionApp(BuildContext context) {
  return AlertDialog(
    title: const Text('Versi yang anda gunakan'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("App Version 1.0.0"),
      ],
    ),
    actions: <Widget>[
      new TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );
}
