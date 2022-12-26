void main(List<String> args) {
  final mom = Mom();
  print(mom.role);
  final dad = Dad();
  print(dad.role);
}

///constructors are special methods and are not inherited by default ( all
///methods are inherited unless there are special methods like constructors).

enum Role { mom, dad, son, daughter, grandma, grandpa }

class Person {
  final Role role;
  const Person({required this.role});
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
