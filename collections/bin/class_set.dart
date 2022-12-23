void main(List<String> args) {
  final person1 = Person(
    name: 'babar fil',
    age: 40,
  );
  final person2 = Person(
    name: 'babar fil',
    age: 40,
  );
  print(person1.hashCode);
  print(person2.hashCode);
  final persons = {person1, person2};
  print(persons);
  if (person1 == person2) {
    print('they are equal');
  } else {
    print('they are not equal');
  }

  ///just because of the content of a var are the same, it doesn't mean that
  ///sets automatically understands that and the reason behind this
}

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  @override
  String toString() => 'Person:$name, $age';
//everytime we print an instance of our person then it will tell us which person that is
}
