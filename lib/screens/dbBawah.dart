import 'package:flutter/material.dart';
import 'package:al_mahfudzot/data/kelas.dart';
import 'package:google_fonts/google_fonts.dart';

class DBBawah extends StatefulWidget {
  @override
  _DBBawahState createState() => _DBBawahState();
}

class _DBBawahState extends State<DBBawah> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: 350,
      width: MediaQuery.of(context).size.width,
      child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: semuaKelas.map((kelasss) {
              return Container(
                width: 50,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(15)),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 10,
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      if (kelasss == semuaKelas[0]) {
                        Navigator.pushNamed(context, "/kelasSatu");
                      } else if (kelasss == semuaKelas[1]) {
                        Navigator.pushNamed(context, "/kelasDua");
                      } else {
                        return Center(
                          child: Text("Halaman yang anda cari tidak ada"),
                        );
                      }
                    },
                    child: Text(kelasss.fasl,
                        style: GoogleFonts.rakkas(
                            color: kelasss.color, fontSize: 20)),
                  )),
                ),
              );
            }).toList(),
          )),
    );
  }
}
