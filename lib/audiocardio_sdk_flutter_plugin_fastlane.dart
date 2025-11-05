
import 'audiocardio_sdk_flutter_plugin_fastlane_platform_interface.dart';

class AudiocardioSdkFlutterPluginFastlane {
  Future<String?> getPlatformVersion() {
    return AudiocardioSdkFlutterPluginFastlanePlatform.instance.getPlatformVersion();
  }
}
