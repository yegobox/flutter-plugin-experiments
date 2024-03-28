
import 'flipper_notification_platform_interface.dart';

class FlipperNotification {
  Future<String?> getPlatformVersion() {
    return FlipperNotificationPlatform.instance.getPlatformVersion();
  }
}
