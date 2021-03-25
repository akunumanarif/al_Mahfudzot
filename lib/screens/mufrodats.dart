import 'package:al_mahfudzot/services/service.dart';
import 'package:flutter/material.dart';
import 'package:al_mahfudzot/models/apiMufrodats.dart';

class Mufrodat extends StatefulWidget {
  @override
  _MufrodatState createState() => _MufrodatState();
}

class _MufrodatState extends State<Mufrodat> {
  final MufrodatApi mufrodatApi = MufrodatApi();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        height: 370,
        width: MediaQuery.of(context).size.width,
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FutureBuilder(
              future: mufrodatApi.getApi(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<ApiModelMufrodats>> snapshot) {
                if (!snapshot.hasData) return Container();
                List<ApiModelMufrodats> muf = snapshot.data;
                return ListView.builder(
                    itemCount: muf.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(20)
                            ),
                        height: 50,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          elevation: 3,
                          child: Center(
                            child: ListTile(
                              title: Text(
                                muf[index].isi,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                              // trailing: Icon(
                              //   Icons.arrow_right,
                              //   size: 35,
                              // ),
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
