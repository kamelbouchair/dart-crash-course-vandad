void main(List<String> args) {
  describe();
  describe(something: null);
  describe(something: 'Hello, Flutter');

  ///named params don't have to be provided at..
  ///..the call site
}

void describe({String? something = 'Hello, Dart'}) {
  print(something);
}
