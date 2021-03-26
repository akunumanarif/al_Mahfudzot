import 'package:al_mahfudzot/customLoader/loader.dart';
import 'package:al_mahfudzot/screens/dashboard.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.greenAccent[400],
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                ),
                Center(
                  child: Shimmer.fromColors(
                    period: Duration(milliseconds: 1500),
                    baseColor: Colors.grey[50],
                    highlightColor: Colors.green,
                    child: Center(
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
                  ),
                ),
                Center(child: CustomLoader())
              ],
            ),
          ),

          // PositionedDirectional(bottom: tinggi / 55, child: CustomLoader())
        ),
      ),
    );
  }
}
