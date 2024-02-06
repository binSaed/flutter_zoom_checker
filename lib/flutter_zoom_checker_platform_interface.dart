import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_zoom_checker_method_channel.dart';

abstract class FlutterZoomCheckerPlatform extends PlatformInterface {
  /// Constructs a FlutterZoomCheckerPlatform.
  FlutterZoomCheckerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterZoomCheckerPlatform _instance =
      MethodChannelFlutterZoomChecker();

  /// The default instance of [FlutterZoomCheckerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterZoomChecker].
  static FlutterZoomCheckerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterZoomCheckerPlatform] when
  /// they register themselves.
  static set instance(FlutterZoomCheckerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> isZoomed() {
    throw UnimplementedError('isZoomed() has not been implemented.');
  }
}
