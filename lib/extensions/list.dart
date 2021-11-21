import 'dart:math';

extension ListExtensions<T> on List<T> {
  Iterable<T> shuffleElementIntoListUpToTwice(T element) {
    if (isEmpty) {
      return [element];
    }

    final hasAnotherElement = where((x) => x == element).isNotEmpty;

    if (!hasAnotherElement && length > 1) {
      final midpoint = length ~/ 2;
      final firstHalf = sublist(0, midpoint);
      final secondHalf = sublist(midpoint);

      return _shuffleIntoListOnce(firstHalf, element)
          .followedBy(_shuffleIntoListOnce(secondHalf, element));
    }

    final result = _shuffleIntoListOnce(this, element);
    return result;
  }
}

List<T> _shuffleIntoListOnce<T>(List<T> list, T element) {
  final targetPosition = list.isNotEmpty ? Random().nextInt(list.length) : 0;
  final result = [...list];
  result.insert(targetPosition, element);
  return result;
}
