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
                    padding: const EdgeInsets.only(left: 50, bottom: 30),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, "/kelasDua"),
                      child: Container(
                          width: 80,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/kelasDua.png',
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  )
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
                    padding: const EdgeInsets.only(left: 50, bottom: 30),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, "/kelasSatu"),
                      child: Container(
                          width: 80,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/kelasSatu.png',
                              fit: BoxFit.cover,
                            ),
                          )),
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
                    padding: const EdgeInsets.only(left: 50, bottom: 30),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, "/kelasEmpat"),
                      child: Container(
                          width: 80,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/kelasEmpat.png',
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  )
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
                    padding: const EdgeInsets.only(left: 50, bottom: 30),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, "/kelasTiga"),
                      child: Container(
                          width: 80,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/kelasTiga.png',
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
