import 'package:hooks_riverpod/hooks_riverpod.dart';

class Repository<T> extends StateNotifier<T> {
  Repository(T initial) : super(initial);

  T get current => state;

  void update(T next) => state = next;
}
