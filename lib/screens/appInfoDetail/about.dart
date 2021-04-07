import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("About App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.green[50],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
            width: lebar,
            height: tinggi / 5,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: SvgPicture.asset(
                'assets/splash.svg',
                color: Colors.green,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    "Mahfudzot memiliki arti kata-kata mutiara atau kata bijak, kata yang bersifat hikmah atau memiliki falsafah hidup. Mahfudzot berisi ungkapan yang indah, ada Mahfudzot tentang kehidupan, Mahfudzot tentang sabar, Mahfudzot tentang ahlak, Mahfudzot tentang bersyukur, Mahfudzot tentang teman, Mahfudzot tentang sahabat, Mahfudzot tentang menuntut ilmu, ataupun mahfudzot tentang waktu. \n\nAplikasi ini adalah Aplikasi pembelajaran sebagai murajaah maupun muthalaah Mahfudzot dan penjelasannya lengkap, yang berisikkan Kumpulan Mahfudzot kelas 1, Mahfudzot kelas 2, Mahfudzot kelas 3, Mahfudzot kelas 4, dan Mahfudzot kelas 5. \n\n",
                    style: GoogleFonts.enriqueta(fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "Contact Us: numanarif87@gmail.com",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
