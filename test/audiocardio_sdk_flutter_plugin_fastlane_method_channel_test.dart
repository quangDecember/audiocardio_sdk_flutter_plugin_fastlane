import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:audiocardio_sdk_flutter_plugin_fastlane/audiocardio_sdk_flutter_plugin_fastlane_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelAudiocardioSdkFlutterPluginFastlane platform = MethodChannelAudiocardioSdkFlutterPluginFastlane();
  const MethodChannel channel = MethodChannel('audiocardio_sdk_flutter_plugin_fastlane');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
