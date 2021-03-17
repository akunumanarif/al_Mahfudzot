import 'package:al_mahfudzot/customLoader/loader.dart';
import 'package:al_mahfudzot/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              child: Opacity(
                  opacity: 0.5,
                  child: SvgPicture.asset(
                    'assets/splash.svg',
                    width: lebar,
                    height: tinggi,
                    color: Colors.green,
                  )),
            ),
            // Column(
            //   children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height / 4,
            // ),
            PositionedDirectional(
              bottom: tinggi / 10,
              child: Column(
                children: [
                  Shimmer.fromColors(
                    period: Duration(milliseconds: 1500),
                    baseColor: Colors.grey[50],
                    highlightColor: Colors.green,
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "المحفوظات",
                        style: GoogleFonts.rakkas(
                            fontSize: 40.0,
                            fontStyle: FontStyle.italic,
                            shadows: <Shadow>[
                              Shadow(
                                  blurRadius: 18.0,
                                  color: Colors.black26,
                                  offset: Offset.fromDirection(100, 12))
                            ]),
                      ),
                    ),
                  ),
                  CustomLoader()
                ],
              ),
            ),
            // PositionedDirectional(bottom: tinggi / 55, child: CustomLoader())
          ],
          //),
          // SizedBox(
          //   height: 30,
          // ),
          //],
        ),
      ),
    );
  }
}
