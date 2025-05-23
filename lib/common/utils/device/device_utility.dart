import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DeviceUtility {
  static void hideKeyboard({required BuildContext context}) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor({required Color color}) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  static void vibrate({required Duration duration}) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  static void launchUrl({required String urlString}) async{
    if(await canLaunchUrlString(urlString)) {
      await launchUrlString(urlString);
    }else {
      throw StringsManager.couldNotLaunchUrl;
    }
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getBottomNavigationBarHeight(){
    return kBottomNavigationBarHeight;
  }
}
