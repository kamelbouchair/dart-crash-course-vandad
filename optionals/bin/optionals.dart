void main(List<String> args) {
//(every data type has a '?' right after, is optional or nullable data types)
  String? name = 'hello';

  /// optionality to have a value
  String? name1;

  /// optinality to not have a value
  print(name);
  print(name1);

  String?
      lastName; // this '??=' is the null aware operator (the compound nullower assignment)
  lastName ??= 'bar';
  // assign the value on the right to the var on the left only if the var in the left is equal to 'null'
  print(lastName);

  String? nullName;
  print(nullName ??
      'foo'); // it prints 'foo', because the left side is an optional String and the right side is not an optional String

  String? firstName;
  print(firstName?.length);

  int? age = 20;
  age = null; //re-asigning the var to null
  if (age == null) {
    print('it is null');
  } else {
    print('it is not null');
  }
}
