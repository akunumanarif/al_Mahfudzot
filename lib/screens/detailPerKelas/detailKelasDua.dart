import 'dart:convert';

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
          "الفصل الأوّل",
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
                .loadString('assets/kelasSatu.json'),
            builder: (context, snapshot) {
              var dataKelasSatu = jsonDecode(snapshot.data.toString());
              return Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    itemCount: dataKelasSatu.length,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                        child: ListTile(
                          trailing: Text(
                            arabicNumber
                                .convert(dataKelasSatu[index]["id"].toString()),
                          ),
                          title: GestureDetector(
                            child: Text(
                              dataKelasSatu[index]["isi"],
                              style: TextStyle(
                                  color: dataKelasSatu[index]["warna"]),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
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
