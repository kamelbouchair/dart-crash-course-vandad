void main(List<String> args) {
//iterables are lazily evaluated lists
  final names = ['babar', 'pokémon', 'fil', 'luffy'];
  final upperCaseNames = names.map((name) {
    print('map got called');
    return name.toUpperCase();
  });

  for (final name in upperCaseNames.take(3)) {
    print(name);
  }
}
