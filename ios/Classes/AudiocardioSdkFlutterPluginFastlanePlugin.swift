import Flutter
import UIKit

public class AudiocardioSdkFlutterPluginFastlanePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "audiocardio_sdk_flutter_plugin_fastlane", binaryMessenger: registrar.messenger())
    let instance = AudiocardioSdkFlutterPluginFastlanePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
