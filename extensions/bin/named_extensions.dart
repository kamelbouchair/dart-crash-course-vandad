void main(List<String> args) {
  final person = Person(name: 'babar fil', age: 40);
  print(ShortDescription(person).description);
  print(LongDescription(person).description);
}
//why do we need names for extensions

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}

//short description
extension ShortDescription on Person {
  String get description => '$name ($age)';
}

//long description
extension LongDescription on Person {
  String get description => 'his name is $name with ($age) years old';
}
