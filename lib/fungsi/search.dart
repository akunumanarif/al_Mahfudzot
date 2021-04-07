import 'package:al_mahfudzot/models/searchModel.dart';
import 'package:al_mahfudzot/services/service.dart';
import 'package:flutter/material.dart';
import 'package:arabic_numbers/arabic_numbers.dart';

class SearchFunction extends SearchDelegate<String> {
  ArabicNumbers arabicNumber = ArabicNumbers();

  final SearchModel searchModel;
  //final ApiModelMufrodats mufrodats;

  SearchFunction({
    this.searchModel,
    //this.mufrodats,
  });

  final MufrodatApi apiSearch = MufrodatApi();

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
  Widget buildResults(BuildContext context) => FutureBuilder<List<SearchModel>>(
        future: apiSearch.getSearch(),
        builder: (context, AsyncSnapshot<List<SearchModel>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (!snapshot.hasError) {
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
    return FutureBuilder<List<SearchModel>>(
        future: apiSearch.getSearch(),
        builder: (context, AsyncSnapshot<List<SearchModel>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Text("Loading ... "),
            );
          }
          var kilis = snapshot.data
              .where((a) => a.isi.toLowerCase().contains(query))
              .toList();

          return ListView(
              children: kilis
                  .map((SearchModel e) => GestureDetector(
                        onTap: () {},
                        child: ExpansionTile(
                          title: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              e.judul,
                              textAlign: TextAlign.right,
                            ),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(e.isi),
                            ),
                          ],
                        ),
                      ))
                  .toList());
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
