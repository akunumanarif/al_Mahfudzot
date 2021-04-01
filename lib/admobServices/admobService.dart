import 'dart:io';

// class AdmobService {
//   String getAdmobID() {
//     return "ca-app-pub-1098998900304800~8206304609";
//   }

//   String getBannerAdsID() {
//     return "ca-app-pub-1098998900304800/8611313494";
//   }
// }

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-1098998900304800/8611313494";
      //return 'ca-app-pub-3940256099942544/6300978111';
      // } else if (Platform.isIOS) {
      //   return "<YOUR_IOS_BANNER_AD_UNIT_ID>";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  // static String get nativeAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "<YOUR_ANDROID_NATIVE_AD_UNIT_ID>";
  //   } else if (Platform.isIOS) {
  //     return "<YOUR_IOS_NATIVE_AD_UNIT_ID>";
  //   } else {
  //     throw new UnsupportedError("Unsupported platform");
  //   }
  // }
}
