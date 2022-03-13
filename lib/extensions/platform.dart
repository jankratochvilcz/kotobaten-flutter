import 'package:kotobaten/models/app_configuration.dart';

enum DeviceType { desktop, mobile }

extension PlatformExtensions on Platform {
  DeviceType toDeviceType() {
    switch (this) {
      case Platform.android:
      case Platform.ios:
        return DeviceType.mobile;
      default:
        return DeviceType.desktop;
    }
  }
}
