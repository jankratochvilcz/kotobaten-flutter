extension IterableExtensions<T> on Iterable<T> {
  Iterable<T> unique(Object Function(T element) selector) {
    final elements = this;
    final uniqueElements = <T>[];

    for (var element in elements) {
      if (!uniqueElements.any((x) => selector(x) == selector(element))) {
        uniqueElements.add(element);
      }
    }

    return uniqueElements;
  }
}
