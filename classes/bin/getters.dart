void main(List<String> args) {
  final person = Person(
    firstName: 'babar',
    lastName: 'fil',
  );
  print(person.fullName);
}

class Person {
  final String firstName;
  final String lastName;

//this is the getter function
  String get fullName => '$firstName, $lastName';

  const Person({
    required this.firstName,
    required this.lastName,
  });
}
