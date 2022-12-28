void main(List<String> args) {
  print([1, 2, 2, 3, 4].containsDuplicateValue);
  print([1, 2, 3, 4].containsDuplicateValue);
  print(['babar', 'babar', 'fil'].containsDuplicateValue);
  print(['babar', 'fil'].containsDuplicateValue);
}

extension on Iterable {
  bool get containsDuplicateValue => toSet().length != length;
}
