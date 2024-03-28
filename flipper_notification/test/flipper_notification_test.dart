import 'package:flutter_test/flutter_test.dart';
import 'package:flipper_notification/flipper_notification.dart';
import 'package:flipper_notification/flipper_notification_platform_interface.dart';
import 'package:flipper_notification/flipper_notification_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlipperNotificationPlatform
    with MockPlatformInterfaceMixin
    implements FlipperNotificationPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlipperNotificationPlatform initialPlatform = FlipperNotificationPlatform.instance;

  test('$MethodChannelFlipperNotification is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlipperNotification>());
  });

  test('getPlatformVersion', () async {
    FlipperNotification flipperNotificationPlugin = FlipperNotification();
    MockFlipperNotificationPlatform fakePlatform = MockFlipperNotificationPlatform();
    FlipperNotificationPlatform.instance = fakePlatform;

    expect(await flipperNotificationPlugin.getPlatformVersion(), '42');
  });
}
