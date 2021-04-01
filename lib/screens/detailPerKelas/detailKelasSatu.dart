import 'dart:convert';
import 'package:al_mahfudzot/screens/testScreen.dart';
import 'package:flutter/material.dart';
import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailKelasSatu extends StatefulWidget {
  @override
  _DetailKelasSatuState createState() => _DetailKelasSatuState();
}

class _DetailKelasSatuState extends State<DetailKelasSatu> {
  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;

    ArabicNumbers arabicNumber = ArabicNumbers();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "الفصل الأوّل",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue,
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
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/kelasSatu.json'),
            builder: (context, snapshot) {
              var dataKelasSatu = jsonDecode(snapshot.data.toString());
              return Container(
                height: MediaQuery.of(context).size.height / 1.7,
                child: dataKelasSatu == null
                    ? Container()
                    : ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        itemCount: dataKelasSatu.length,
                        itemBuilder: (BuildContext context, index) {
                          return Card(
                            child: ExpansionTile(
                              title: Text(
                                dataKelasSatu[index]["isi"],
                                textDirection: TextDirection.rtl,
                              ),
                              leading: Icon(Icons.expand_more_sharp),
                              trailing: Padding(
                                padding: const EdgeInsets.only(
                                  left: 35,
                                ),
                                child: Text(
                                  arabicNumber.convert(
                                    dataKelasSatu[index]["id"].toString(),
                                  ),
                                ),
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    dataKelasSatu[index]["arti"],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    dataKelasSatu[index]["penjelasan"],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
              );
            },
          ),
          TestADs()
        ],
      ),
    );
  }
}
