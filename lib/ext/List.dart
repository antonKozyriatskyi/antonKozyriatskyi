extension SeparatedExt<T> on Iterable<T> {
  Iterable<T> separated(T Function() separator) {
    final list = List<T>.of(this);

    if (length <= 1) return list;

    for (var i = length - 1; i > 0; i -= 2) {
      final e = separator();
      list.insert(i, e);
    }

    return list;
  }
}
