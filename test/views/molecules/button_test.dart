import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/molecules/button.dart';

void main() {
  group('shortcut hints', () {
    testWidgets('Shows a shortcut on the web', (WidgetTester tester) async {
      const shortcutText = 'X';

      await tester.pumpWidget(ProviderScope(
          overrides: [
            appConfigurationProvider.overrideWithValue(
                AppConfiguration.initialized('apiRoot', false, DeviceType.web))
          ],
          child: Directionality(
              textDirection: TextDirection.ltr,
              child: Button(
                'hello',
                () => {},
                shortcut: shortcutText,
              ))));

      final shortcutFinder = find.textContaining(shortcutText);
      expect(shortcutFinder, findsOneWidget);
    });

    testWidgets('Hides a shortcut on mobile', (WidgetTester tester) async {
      const shortcutText = 'X';

      await tester.pumpWidget(ProviderScope(
          overrides: [
            appConfigurationProvider.overrideWithValue(
                AppConfiguration.initialized(
                    'apiRoot', false, DeviceType.mobile))
          ],
          child: Directionality(
              textDirection: TextDirection.ltr,
              child: Button(
                'hello',
                () => {},
                shortcut: shortcutText,
              ))));

      final shortcutFinder = find.textContaining(shortcutText);
      expect(shortcutFinder, findsNothing);
    });
  });
}
