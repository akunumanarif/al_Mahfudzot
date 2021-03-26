import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:arabic_numbers/arabic_numbers.dart';

class SearchFunction extends SearchDelegate<String> {
  ArabicNumbers arabicNumber = ArabicNumbers();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
            showSuggestions(context);
          }
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) => FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('assets/search.json'),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError) {
                return Container(
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: Text(
                    'Ada kesalahan jaringan!',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                );
              } else {
                return Center(
                  child: Text('Kesini apa yang kau cari ... '),
                );
              }
          }
        },
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('assets/search.json'),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Text("Loading ... "),
            );
          }
          var kilis = jsonDecode(snapshot.data).toList();
          return ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: kilis.length,
              itemBuilder: (BuildContext context, index) {
                return Card(
                  child: ExpansionTile(
                    leading: Icon(Icons.expand_more_sharp),
                    trailing: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(arabicNumber.convert(kilis[index]["id"])),
                    ),
                    title: GestureDetector(
                      child: Text(
                        kilis[index]["judul"],
                        //["judul"],
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          kilis[index]["isi"],
                          textDirection: TextDirection.rtl,
                        ),
                      )
                    ],
                  ),
                );
              });
        });
  }
}

// ListView.builder(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               itemCount: kilis.length,
//               itemBuilder: (BuildContext context, index) {
//                 return Card(
//                   child: Flexible(
//                     child: ExpansionTile(
//                       leading: Icon(Icons.expand_more_sharp),
//                       trailing: Padding(
//                         padding: const EdgeInsets.only(left: 35),
//                         child:
//                             Text(arabicNumber.convert(kilis[index].toString())),
//                       ),
//                       title: GestureDetector(
//                         child: Text(
//                           kilis,
//                           //["judul"],
//                           textDirection: TextDirection.rtl,
//                         ),
//                       ),
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(15.0),
//                           child: Text(
//                             kilis[index],
//                             textDirection: TextDirection.rtl,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 );
//               });
