T maxOf<T extends Comparable<Object?>>(List<T> list) {
  if (list.isEmpty) {
    throw ArgumentError('list must not be empty');
  }

  return list.skip(1).fold(
    list.first,
    (max, e) => e.compareTo(max) > 0 ? e : max,
  );
}

void main() {
  final numbers = [3, 9, 2, 7];
  final words = ['apple', 'pear', 'banana'];

  print('Max of numbers: ${maxOf(numbers)}');
  print('Max of words: ${maxOf(words)}');
}
