import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TermAndCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Term and condition"),
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Mohon baca baik-baik Syarat dan Ketentuan pada halaman ini yang berisikan hak dan kewajiban Anda sebagai pengguna aplikasi Mahfudzot Lengkap \n\nAplikasi ini adalah Aplikasi pembelajaran sebagai murajaah maupun muthalaah Mahfudzot dan penjelasannya lengkap, yang berisikkan Kumpulan Mahfudzot kelas 1, Mahfudzot kelas 2, Mahfudzot kelas 3, Mahfudzot kelas 4, dan Mahfudzot kelas 5. \n\nSyarat dan Ketentuan dari penggunaan Aplikasi Mahfudzot di bawah ini (“Syarat dan Ketentuan”) akan mengatur penggunaan atas Aplikasi Mahfudzot dan jasa-jasa (“Layanan”) kami Lyba Studio (“Kami”), oleh karenanya mohon membaca dengan seksama ketentuan-ketentuan tersebut secara berhati-hati sebelum menggunakan Aplikasi Mahfudzot. \n\n",
                      style: GoogleFonts.enriqueta(fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      "Syarat dan Ketentuan\n",
                      style: GoogleFonts.oswald(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Definisi\n\nAplikasi Mahfudzot Lengkap ini adalah aplikasi dalam kategori book and referrence.\n\nKetentuan Penggunaan\n\naplikasi Mahfudzot sebagai kategori book and referrence menyediakan bahan atau literasi yang bersifat terbuka sebagai bahan pembelajaran saja, maka segala bentuk copy paste akan ditanggung sendiri\n\nPenilaian dan Ulasan\n\nSetiap penilaian dan ulasan yang pengguna berikan akan sangat berarti bagi kami developer Aplikasi Mahfudzot, maka segala bentuk tindak kecurangan dan spam atau menyesatkan menjadi tanggung jawab pengguna apabila terbukti melakukan penilaian yang merugikan.",
                      style: GoogleFonts.oswald(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
