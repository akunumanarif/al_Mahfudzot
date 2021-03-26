import 'package:flutter/material.dart';
import 'dart:convert';

class Mahfudzot extends StatefulWidget {
  @override
  _MahfudzotState createState() => _MahfudzotState();
}

class _MahfudzotState extends State<Mahfudzot> {
  @override
  Widget build(BuildContext context) {
    final List<Color> warna = <Color>[
      Colors.blue,
      Colors.green,
      Colors.red,
      Colors.yellowAccent,
      Colors.orange,
    ];

    return Container(
        color: Colors.grey[200],
        height: 370,
        width: MediaQuery.of(context).size.width,
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/semuaKelas.json'),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return Container();
                var dataSemuaNamaKelas = jsonDecode(snapshot.data.toString());
                return ListView.builder(
                    itemCount: dataSemuaNamaKelas.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(20)
                            ),
                        height: 100,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          elevation: 10,
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                switch (dataSemuaNamaKelas[index]["fasl"]) {
                                  case "الفصل الأوّل":
                                    Navigator.pushNamed(context, "/kelasSatu");
                                    break;
                                  case "الفصل االثان":
                                    Navigator.pushNamed(context, "/kelasDua");
                                    break;
                                  case "الفصل االثالث":
                                    Navigator.pushNamed(context, "/kelasTiga");
                                    break;
                                  case "الفصل الرّبع":
                                    Navigator.pushNamed(context, "/kelasEmpat");
                                    break;
                                  case "الفصل االخامس":
                                    Navigator.pushNamed(context, "/kelasLima");
                                    break;
                                  default:
                                    print("Gagal Memuat");
                                }
                              },
                              child: ListTile(
                                leading: Icon(Icons.book_rounded),
                                title: Text(
                                  dataSemuaNamaKelas[index]["fasl"],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: warna[index]),
                                ),
                                trailing: Icon(
                                  Icons.arrow_right,
                                  size: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              },
            )));

    // ini untuk style grid

    // return Container(
    //   color: Theme.of(context).scaffoldBackgroundColor,
    //   height: 370,
    //   width: MediaQuery.of(context).size.width,
    //   child: Padding(
    //       padding: const EdgeInsets.all(15.0),
    //       child: GridView.count(
    //         crossAxisCount: 2,
    //         mainAxisSpacing: 10,
    //         crossAxisSpacing: 10,
    //         children: semuaKelas.map((kelasss) {
    //           return Container(
    //             width: 50,
    //             height: 60,
    //             decoration: BoxDecoration(
    //                 color: Colors.white12,
    //                 borderRadius: BorderRadius.circular(15)),
    //             child: Card(
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(15.0),
    //               ),
    //               clipBehavior: Clip.antiAlias,
    //               elevation: 10,
    //               child: Center(
    //                   child: GestureDetector(
    //                 onTap: () {
    //                   if (kelasss == semuaKelas[0]) {
    //                     Navigator.pushNamed(context, "/kelasSatu");
    //                   } else if (kelasss == semuaKelas[1]) {
    //                     Navigator.pushNamed(context, "/kelasDua");
    //                   } else if (kelasss == semuaKelas[2]) {
    //                     Navigator.pushNamed(context, "/kelasTiga");
    //                   } else if (kelasss == semuaKelas[3]) {
    //                     Navigator.pushNamed(context, "/kelasEmpat");
    //                   } else if (kelasss == semuaKelas[4]) {
    //                     Navigator.pushNamed(context, "/kelasLima");
    //                   } else {
    //                     return Center(
    //                       child: Text("Halaman yang anda cari tidak ada"),
    //                     );
    //                   }
    //                 },
    //                 child: Text(kelasss.fasl,
    //                     style: GoogleFonts.rakkas(
    //                         color: kelasss.color, fontSize: 20)),
    //               )),
    //             ),
    //           );
    //         }).toList(),
    //       )),
    // );
  }
}
