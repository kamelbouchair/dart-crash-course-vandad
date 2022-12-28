void main(List<String> args) {
  print('babar fil' - 'fil');
  print('babar fil' - 'babar');
  print('babar' - 'babar');
}

extension Remove on String {
  ///String on extension is the left handside, and other on param is right hand
  ///side, both of them are Strings and the result is return String.
  String operator -(String other) => replaceAll(
        other,
        '',
      );

  ///we're saying replace all instances of this other string and replace them
  ///with an empty String ''.
}
