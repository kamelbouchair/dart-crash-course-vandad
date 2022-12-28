void main(List<String> args) {
  final value = 20;
  final result = value.timesFour;
  print(result);
  //or simply:
  print(50.timesFour);
}

extension on int {
//any int should be able to get multiplied by 4 using this getter.
  int get timesFour => this * 4;

  ///'this' keyword inside an extension returns an instance of that value that
  ///you're operating on.('this' replaces 20).

}
