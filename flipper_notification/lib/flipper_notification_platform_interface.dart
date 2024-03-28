import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flipper_notification_method_channel.dart';

abstract class FlipperNotificationPlatform extends PlatformInterface {
  /// Constructs a FlipperNotificationPlatform.
  FlipperNotificationPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlipperNotificationPlatform _instance = MethodChannelFlipperNotification();

  /// The default instance of [FlipperNotificationPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlipperNotification].
  static FlipperNotificationPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlipperNotificationPlatform] when
  /// they register themselves.
  static set instance(FlipperNotificationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
