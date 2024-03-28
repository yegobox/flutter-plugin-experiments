import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flipper_notification_platform_interface.dart';

/// An implementation of [FlipperNotificationPlatform] that uses method channels.
class MethodChannelFlipperNotification extends FlipperNotificationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flipper_notification');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
