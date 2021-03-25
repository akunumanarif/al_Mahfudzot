import 'package:al_mahfudzot/popupScreen/appInfo.dart';
import 'package:al_mahfudzot/popupScreen/appShare.dart';
import 'package:al_mahfudzot/screens/detailPerKelas/detailKelasDua.dart';
import 'package:al_mahfudzot/screens/detailPerKelas/detailKelasEmpat.dart';
import 'package:al_mahfudzot/screens/detailPerKelas/detailKelasLima.dart';
import 'package:al_mahfudzot/screens/detailPerKelas/detailKelasSatu.dart';
import 'package:al_mahfudzot/screens/detailPerKelas/detailKelasTiga.dart';
import 'package:al_mahfudzot/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        '/kelasSatu': (context) => DetailKelasSatu(),
        '/kelasDua': (context) => DetailKelasDua(),
        '/kelasTiga': (context) => DetailKelasTiga(),
        '/kelasEmpat': (context) => DetailKelasEmpat(),
        '/kelasLima': (context) => DetailKelasLima(),
        '/info': (context) => AppInformation(),
        '/share': (context) => AppShare()
      },
    );
  }
}
