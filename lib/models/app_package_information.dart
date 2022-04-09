import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

final appPackageInformationProvider =
    FutureProvider<AppPackageInformation>((_) async {
  var packageInfo = await PackageInfo.fromPlatform();
  return AppPackageInformation(packageInfo.appName, packageInfo.packageName,
      packageInfo.version, packageInfo.buildNumber);
});

class AppPackageInformation {
  final String appName;
  final String packageName;
  final String version;
  final String buildNumber;

  const AppPackageInformation(
      this.appName, this.packageName, this.version, this.buildNumber);
}
