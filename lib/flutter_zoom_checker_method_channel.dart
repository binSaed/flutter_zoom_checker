import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_zoom_checker_platform_interface.dart';

/// An implementation of [FlutterZoomCheckerPlatform] that uses method channels.
class MethodChannelFlutterZoomChecker extends FlutterZoomCheckerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_zoom_checker');

  @override
  Future<bool> isZoomed() async {
    final version = await methodChannel.invokeMethod<bool>('isZoomed');
    return version ?? false;
  }
}
