import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:kotobaten/models/slices/user/user.dart';
import 'package:kotobaten/services/analytics_events.dart';
import 'package:kotobaten/services/app_configuration.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

final analyticsServiceProvider =
    Provider((ref) => AnalyticsService(ref.read(appConfigurationProvider)));

class AnalyticsService {
  Mixpanel? mixpanel;
  final AppConfiguration configuration;

  AnalyticsService(this.configuration);

  Future initialize() async {
    if (mixpanel != null || configuration.mixpanelToken == null) {
      return;
    }

    final mixpanelInstance = await Mixpanel.init(configuration.mixpanelToken!,
        optOutTrackingDefault: false);
    mixpanelInstance.setServerURL('https://api-eu.mixpanel.com');

    mixpanel = mixpanelInstance;
  }

  void setUser(User user) => mixpanel?.identify(user.user.email);

  void track(AnalyticsEvents event) {
    mixpanel?.track(event.name);
    log('Event: ${event.name}');
  }
}
