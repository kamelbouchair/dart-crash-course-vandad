void main(List<String> args) async {
  await for (final name in allNames()) {
    print(name);
  }
}

Stream<String> maleNames() async* {
  yield 'peter';
  yield 'john';
  yield 'kasper';
}

Stream<String> femaleNames() async* {
  yield 'suzy';
  yield 'maria';
  yield 'clara';
}

Stream<String> allNames() async* {
  yield* maleNames();
  yield* femaleNames();
}
