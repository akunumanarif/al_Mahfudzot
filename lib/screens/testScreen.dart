import 'package:flutter/material.dart';
import 'package:al_mahfudzot/admobServices/admobService.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TestADs extends StatefulWidget {
  @override
  _TestADsState createState() => _TestADsState();
}

class _TestADsState extends State<TestADs> {
  BannerAd _ad;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    _ad = BannerAd(
      size: AdSize.banner,
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      listener: AdListener(
        onAdLoaded: (_) {
          setState(
            () {
              isLoaded = true;
            },
          );
        },
        onAdFailedToLoad: (_, error) {
          print("Mohon Refresh Aplikasi $error");
        },
      ),
    );

    _ad.load();
  }

  @override
  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  Widget checkAds() {
    if (isLoaded == true) {
      return PositionedDirectional(
        bottom: 20,
        child: Container(
          child: AdWidget(
            ad: _ad,
          ),
          height: _ad.size.height.toDouble(),
          width: _ad.size.width.toDouble(),
          alignment: Alignment.bottomCenter,
        ),
      );
    } else {
      return CircularProgressIndicator();
    }
  }

  @override
  Widget build(BuildContext context) {
    return checkAds();
  }
}
