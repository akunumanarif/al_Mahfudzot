import 'package:al_mahfudzot/screens/detailPerKelas/detailKelasDua.dart';
import 'package:al_mahfudzot/screens/detailPerKelas/detailKelasSatu.dart';
import 'package:al_mahfudzot/screens/splash.dart';
import 'package:flutter/material.dart';
//import './screens/dashboard.dart';

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
        '/kelasDua': (context) => DetailKelasDua()
      },
    );
  }
}
