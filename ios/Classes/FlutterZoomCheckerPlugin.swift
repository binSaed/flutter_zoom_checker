import Flutter
import UIKit

public class FlutterZoomCheckerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_zoom_checker", binaryMessenger: registrar.messenger())
    let instance = FlutterZoomCheckerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "isZoomed":
        result(UIScreen.main.nativeScale>UIScreen.main.scale)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
