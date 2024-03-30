import 'flipper_notification_platform_interface.dart';

class FlipperNotification {
  Future<String?> getPlatformVersion() {
    return FlipperNotificationPlatform.instance.getPlatformVersion();
  }

  Future<void> sendNotification(
      {required String summary,
      required String body,
      required String icon}) async {
    await FlipperNotificationPlatform.instance
        .sendNotification(summary, body, icon);
  }
}
