void main(List<String> args) {
  final int intValue = eitherIntOrDouble();
  print(intValue);
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue);
  final int intsval = eitherIntsOrDoubles();
  print(intsval);
  final double doublesval = eitherIntsOrDoubles();
  print(doublesval);
}

///generics is the idea in programming language design where the type of an
///object can be constrained. it allows us to play with the dataTypes

//this function can either return an int or double.
SOMETHING eitherIntOrDouble<SOMETHING extends num>() {
  switch (SOMETHING) {
    case int:
      return 1 as SOMETHING;
    case double:
      return 1.1 as SOMETHING;
    default:
      throw Exception('not supported');
  }
}
//it's better to replace 'SOMETHING' with only 'T'.

T eitherIntsOrDoubles<T extends num>() {
  switch (T) {
    case int:
      return 10 as T;
    case double:
      return 10.1 as T;
    default:
      throw Exception('not supported');
  }
}
