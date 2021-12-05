import 'package:flutter_test/flutter_test.dart';
import 'package:kotobaten/extensions/datetime.dart';

final _currentDateTime = DateTime(2000, 10, 10);

void main() {
  group('getRelativeToNowString', () {
    test('Returns for n days ago', () {
      final actual =
          DateTime(2000, 10, 1).getRelativeToNowString(_currentDateTime);
      expect(actual, '9 days ago');
    });

    test('Returns for n weeks ago', () {
      final actual =
          DateTime(2000, 9, 23).getRelativeToNowString(_currentDateTime);
      expect(actual, '2 weeks ago');
    });

    test('Returns for today', () {
      final actual =
          DateTime(2000, 10, 10).getRelativeToNowString(_currentDateTime);
      expect(actual, 'today');
    });
  });
}
