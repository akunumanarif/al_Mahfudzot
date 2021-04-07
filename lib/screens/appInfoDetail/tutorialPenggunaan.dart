import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TutorialPengguna extends StatelessWidget {
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Kami memahami dengan baik apabila nantinya anda sebagai pengguna pertama akan menemukan kesulitan menggunakan Aplikasi Mahfudzot ini, maka oleh sebab itu kami menyusun secara singkat tutorial ini karena telah ada petunjuk penggunaan diawal anda menginstall aplikasi mahfdzot, atas pengertian nya kami ucapkan terima kasih. \n\n",
                      style: GoogleFonts.enriqueta(fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      "Tutorial\n",
                      style: GoogleFonts.oswald(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "1. Setelah anda install Aplikasi Mahfudzot anda akan dihadapkan dengan halaman beranda atau home\n\n2. Pada Halaman utama ini anda bisa memilih ingin membuka halaman pilihan mahfudzot langsung di row atas\n\n3. Atau memilih di row selanjutnya yaitu Mahfudzot menurut kelas\n\n4. Dan Memilih membuka halaman daftar mufrodat Mahfudzot yang disediakan dengan menggeser atau swipe jari.\n\n5. Pada Halaman Mahfudzot per kelas anda akan menjumpai kumpulan mahfudzot lengkap kelas 1 sampai 5.\n\n6. Silahkan anda scroll kebawah untuk mencari mahfudzot dan artinya serta penjelasannya langsung atau dengan mencarinya dengan menekan icon filter di pojok kiri atas pada halaman utama atau Home.\n\n7. Selanjutnya pada navigasi about anda bisa membaca pernyataan dan syarat ketentuan tentang aplikasi Mahfudzot ini.",
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
