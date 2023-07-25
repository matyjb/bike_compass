import 'package:bloc/bloc.dart';
import 'package:stream_transform/stream_transform.dart';

int getNewKey<T>(Map<int, T> m) {
  if (m.isNotEmpty) {
    return m.keys.last + 1;
  } else {
    return 0;
  }
}

extension ListExtensions on List {
  void moveItemWithinList<T>(int oldIndex, int newIndex) {
    if (isEmpty ||
        oldIndex < 0 ||
        oldIndex >= length ||
        newIndex < 0 ||
        newIndex >= length ||
        oldIndex == newIndex) {
      return;
    }
    T item = removeAt(oldIndex);
    insert(newIndex, item);
  }
}

EventTransformer<E> debounce<E>(Duration duration) {
  return (events, mapper) {
    return events.debounce(duration).switchMap(mapper);
  };
}
