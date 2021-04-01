import 'dart:convert';

import 'package:al_mahfudzot/screens/testScreen.dart';
import 'package:flutter/material.dart';
import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailKelasDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;

    ArabicNumbers arabicNumber = ArabicNumbers();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "الفصل االثان",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.green,
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
                .loadString('assets/kelasDua.json'),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Container();

              var dataKelasDua = jsonDecode(snapshot.data.toString());
              return Container(
                height: MediaQuery.of(context).size.height / 1.7,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    itemCount: dataKelasDua.length,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                        child: ExpansionTile(
                          leading: Icon(Icons.expand_more_sharp),
                          trailing: Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Text(
                              arabicNumber.convert(
                                  dataKelasDua[index]["id"].toString()),
                            ),
                          ),
                          title: GestureDetector(
                            child: Text(
                              dataKelasDua[index]["judul"],
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                dataKelasDua[index]["isi"],
                                textDirection: TextDirection.rtl,
                              ),
                            )
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
