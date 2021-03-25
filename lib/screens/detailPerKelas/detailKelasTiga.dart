import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailKelasTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;

    ArabicNumbers arabicNumber = ArabicNumbers();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "الفصل االثالث",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red,
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
                .loadString('assets/kelasTiga.json'),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Container();

              var dataKelasTiga = jsonDecode(snapshot.data.toString());
              return Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    itemCount: dataKelasTiga.length,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                        child: ExpansionTile(
                          leading: Icon(Icons.expand_more_sharp),
                          trailing: Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Text(
                              arabicNumber.convert(
                                  dataKelasTiga[index]["id"].toString()),
                            ),
                          ),
                          title: GestureDetector(
                            child: Text(
                              dataKelasTiga[index]["judul"],
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                dataKelasTiga[index]["isi"],
                                textDirection: TextDirection.rtl,
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              );
            },
          )
        ],
      ),
    );
  }
}
