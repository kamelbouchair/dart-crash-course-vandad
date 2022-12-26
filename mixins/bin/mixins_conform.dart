void main(List<String> args) {
  final person = Person(
    firstName: 'babar',
    lastName: 'fil',
  );
  print(person.fullName);
  print(getFullName(person));
}
//mixins are dataTypes themselves, and they can be passed as parameters

String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  const Person({
    required this.firstName,
    required this.lastName,
  });
}
