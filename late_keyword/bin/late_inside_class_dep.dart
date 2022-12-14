import 'dart:collection';

void main(List<String> args) {
  final someone = Someone();
  print(someone.fullName);
  print(someone.firstName);
  print(someone.lastName);
  final woof = Dog();
  woof.type = 'huskey';
  print(woof.type);
//if it's a late final variable then it can't be assigned twice
}

class Someone {
//late variables here are depending on each other, kinda like a chain
  late String fullName = _getFullName();
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print('"getFullName" is called');
    return 'babar fil';
  }
}

class Dog {
  late final String type;
}
