void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person.description);

  ///the late variables inside a Person(class) as properties
  ///are not resolved only when they're first used
}

class Person {
  late String description = calculationOfDescription();
  final int age;

  Person({this.age = 18}) {
    print('constructor is called');
  }

  String calculationOfDescription() {
    print('function "calculationOfDescription" is called');
    return 'babar fil';
  }
}
