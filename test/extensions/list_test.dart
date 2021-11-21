import 'package:flutter_test/flutter_test.dart';
import 'package:kotobaten/extensions/list.dart';
import 'package:tuple/tuple.dart';

void main() {
  group('shuffleElementIntoListUpToTwice', () {
    test('empty list results in a single element', () {
      final actual = <String>[].shuffleElementIntoListUpToTwice('a');
      expect(actual.length, 1);
    });

    test('single element results in two elements', () {
      final actual = <String>['b'].shuffleElementIntoListUpToTwice('a');
      expect(actual.length, 2);
    });

    test('two elements result in four elements', () {
      final actual = <String>['b', 'c'].shuffleElementIntoListUpToTwice('a');
      expect(actual.length, 4);
    });

    test('two elements result in four elements', () {
      const target = Tuple2('a', 'b');
      final actual = <Tuple2<String, String>>[
        const Tuple2('c', 'd'),
        const Tuple2('c', 'd'),
        target
      ].shuffleElementIntoListUpToTwice(target);
      expect(actual.length, 4);
    });

    test('doesnt alter original list', () {
      var original = ['b'];
      original.shuffleElementIntoListUpToTwice('a');
      expect(original.length, 1);
    });
  });
}
