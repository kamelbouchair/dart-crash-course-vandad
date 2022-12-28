void main(List<String> args) {
  print('hello'.stringReversed);
  print('babar fil'.stringReversed);
}

///split makes string like :'h','e','l','l','o'. then reverse it.'o','h',...'h'
///and finally join it together: 'olleh'.

extension on String {
  String get stringReversed => split('').reversed.join();
}
