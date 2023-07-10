int getNewKey<T>(Map<int, T> m) {
  if (m.isNotEmpty) {
    return m.keys.last + 1;
  } else {
    return 0;
  }
}
