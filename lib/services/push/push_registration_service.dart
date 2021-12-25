import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:kotobaten/services/app_configuration.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/services/push/device_installation.service.dart';

final pushRegistrationServiceProvider = Provider((ref) =>
    PushRegistrationService(ref.read(appConfigurationProvider),
        ref.read(kotobatenApiServiceProvider)));

class PushRegistrationService {
  static const notificationRegistration =
      MethodChannel('janjanxyz.kotobaten/notificationregistration');

  static const String refreshRegistrationChannelMethod = "refreshRegistration";
  static const String installationsEndpoint = "api/notifications/installations";
  static const String cachedDeviceTokenKey = "cached_device_token";
  static const String cachedTagsKey = "cached_tags";

  final deviceInstallationService = DeviceInstallationService();
  final secureStorage = const FlutterSecureStorage();

  final AppConfiguration configuration;
  final KotobatenApiService apiService;

  PushRegistrationService(this.configuration, this.apiService) {
    notificationRegistration
        .setMethodCallHandler(handleNotificationRegistrationCall);
  }

  Future<void> deregisterDevice() async {
    throw Error();
    // final cachedToken = await secureStorage.read(key: cachedDeviceTokenKey);
    // final serializedTags = await secureStorage.read(key: cachedTagsKey);

    // if (cachedToken == null || serializedTags == null) {
    //   return;
    // }

    // var deviceId = await deviceInstallationService.getDeviceId();

    // if (deviceId.isEmpty) {
    //   throw "Unable to resolve an ID for the device.";
    // }

    // var response = await http
    //     .delete("$installationsUrl/$deviceId", headers: {"apikey": apikey});

    // if (response.statusCode != 200) {
    //   throw "Deregister request failed: ${response.reasonPhrase}";
    // }

    // await secureStorage.delete(key: cachedDeviceTokenKey);
    // await secureStorage.delete(key: cachedTagsKey);
  }

  Future<void> registerDevice() async {
    // try {
    // final deviceId = await deviceInstallationService.getDeviceId();
    // final platform = await deviceInstallationService.getDevicePlatform();
    final token = await deviceInstallationService.getDeviceToken();

    await apiService.registerPush(token);

    //   await secureStorage.write(key: cachedDeviceTokenKey, value: token);
    //   await secureStorage.write(key: cachedTagsKey, value: serializedTags);
    // } on PlatformException catch (e) {
    //   throw e.message;
    // } catch (e) {
    //   throw "Unable to register device: $e";
    // }
  }

  Future<void> refreshRegistration() async {
    final currentToken = await deviceInstallationService.getDeviceToken();
    final cachedToken = await secureStorage.read(key: cachedDeviceTokenKey);

    if (cachedToken == null || currentToken == cachedToken) {
      return;
    }

    return registerDevice();
  }

  Future<void> handleNotificationRegistrationCall(MethodCall call) async {
    switch (call.method) {
      case refreshRegistrationChannelMethod:
        return refreshRegistration();
      default:
        throw MissingPluginException();
    }
  }
}
