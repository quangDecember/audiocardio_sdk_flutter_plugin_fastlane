import 'package:flutter_test/flutter_test.dart';
import 'package:audiocardio_sdk_flutter_plugin_fastlane/audiocardio_sdk_flutter_plugin_fastlane.dart';
import 'package:audiocardio_sdk_flutter_plugin_fastlane/audiocardio_sdk_flutter_plugin_fastlane_platform_interface.dart';
import 'package:audiocardio_sdk_flutter_plugin_fastlane/audiocardio_sdk_flutter_plugin_fastlane_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAudiocardioSdkFlutterPluginFastlanePlatform
    with MockPlatformInterfaceMixin
    implements AudiocardioSdkFlutterPluginFastlanePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AudiocardioSdkFlutterPluginFastlanePlatform initialPlatform = AudiocardioSdkFlutterPluginFastlanePlatform.instance;

  test('$MethodChannelAudiocardioSdkFlutterPluginFastlane is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAudiocardioSdkFlutterPluginFastlane>());
  });

  test('getPlatformVersion', () async {
    AudiocardioSdkFlutterPluginFastlane audiocardioSdkFlutterPluginFastlanePlugin = AudiocardioSdkFlutterPluginFastlane();
    MockAudiocardioSdkFlutterPluginFastlanePlatform fakePlatform = MockAudiocardioSdkFlutterPluginFastlanePlatform();
    AudiocardioSdkFlutterPluginFastlanePlatform.instance = fakePlatform;

    expect(await audiocardioSdkFlutterPluginFastlanePlugin.getPlatformVersion(), '42');
  });
}
