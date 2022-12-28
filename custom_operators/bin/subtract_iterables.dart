void main(List<String> args) {
  print([1, 2, 3] - [2, 1]);
  print([4, 5, 9, 8] - [5, 8, 4]);
  print([4, 5, 6] - [4, 5, 6]);
  print(['babar', 'fil'] - ['fil']);
  print(['pokémon', 'luffy', 'batman'] - ['pokémon', 'bourouin']);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) =>
      where((element) => !other.contains(element));
}
