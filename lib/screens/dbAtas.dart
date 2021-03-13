import 'package:flutter/material.dart';

class DBAtas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;

    return Container(
        width: 600,
        height: tinggi * 0.2,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8)),
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 30,
                      ),
                      width: 130,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52.5, bottom: 30),
                    child: Card(
                      shadowColor: Colors.black,
                      elevation: 20,
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcoffeetimeromance.com%2FCoffeeThoughts%2Fwp-content%2Fuploads%2F2014%2F04%2Fmmfbook.jpg&f=1&nofb=1"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8)),
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 30,
                      ),
                      width: 130,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52.5, bottom: 30),
                    child: Card(
                      elevation: 20,
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0zTLjOfvYczxhAo-_hyI3gHaLR%26pid%3DApi&f=1"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8)),
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 30,
                      ),
                      width: 130,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52.5, bottom: 30),
                    child: Card(
                      elevation: 20,
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0zTLjOfvYczxhAo-_hyI3gHaLR%26pid%3DApi&f=1"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[700].withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8)),
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 30,
                      ),
                      width: 130,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52.5, bottom: 30),
                    child: Card(
                      elevation: 20,
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0zTLjOfvYczxhAo-_hyI3gHaLR%26pid%3DApi&f=1"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
