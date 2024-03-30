# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flipper_notification_ffi_library VERSION 0.0.1 LANGUAGES C)

add_library(flipper_notification_ffi SHARED
  "flipper_notification_ffi.c"
)

set_target_properties(flipper_notification_ffi PROPERTIES
  PUBLIC_HEADER flipper_notification_ffi.h
  OUTPUT_NAME "flipper_notification_ffi"
)

target_compile_definitions(flipper_notification_ffi PUBLIC DART_SHARED_LIB)
