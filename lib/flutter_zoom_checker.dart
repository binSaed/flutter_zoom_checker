import 'dart:io';

import 'flutter_zoom_checker_platform_interface.dart';

class FlutterZoomChecker {
  static Future<bool> isZoomed() {
    if (Platform.isIOS) {
      return FlutterZoomCheckerPlatform.instance.isZoomed();
    }
    return Future.value(false);
  }
}
