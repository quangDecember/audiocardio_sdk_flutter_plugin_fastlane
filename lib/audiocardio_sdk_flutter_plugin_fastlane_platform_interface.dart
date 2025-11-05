import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'audiocardio_sdk_flutter_plugin_fastlane_method_channel.dart';

abstract class AudiocardioSdkFlutterPluginFastlanePlatform extends PlatformInterface {
  /// Constructs a AudiocardioSdkFlutterPluginFastlanePlatform.
  AudiocardioSdkFlutterPluginFastlanePlatform() : super(token: _token);

  static final Object _token = Object();

  static AudiocardioSdkFlutterPluginFastlanePlatform _instance = MethodChannelAudiocardioSdkFlutterPluginFastlane();

  /// The default instance of [AudiocardioSdkFlutterPluginFastlanePlatform] to use.
  ///
  /// Defaults to [MethodChannelAudiocardioSdkFlutterPluginFastlane].
  static AudiocardioSdkFlutterPluginFastlanePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AudiocardioSdkFlutterPluginFastlanePlatform] when
  /// they register themselves.
  static set instance(AudiocardioSdkFlutterPluginFastlanePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
