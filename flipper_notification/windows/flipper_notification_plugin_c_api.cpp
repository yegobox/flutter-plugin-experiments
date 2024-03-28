#include "include/flipper_notification/flipper_notification_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flipper_notification_plugin.h"

void FlipperNotificationPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flipper_notification::FlipperNotificationPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
