import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'audiocardio_sdk_flutter_plugin_fastlane_platform_interface.dart';

/// An implementation of [AudiocardioSdkFlutterPluginFastlanePlatform] that uses method channels.
class MethodChannelAudiocardioSdkFlutterPluginFastlane extends AudiocardioSdkFlutterPluginFastlanePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('audiocardio_sdk_flutter_plugin_fastlane');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
