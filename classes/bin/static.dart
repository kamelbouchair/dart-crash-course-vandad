void main(List<String> args) {
  final babar = Person();
  babar.name = 'babar';
//any changes we're making on our copy(instance) won't affect the blueprint(class)
  print(babar.name);

  ///You can access a static member of a class using the '.' operator and the
  ///name of the member.
  //using static makes, the copy of babar doesn't have access to age anymore
  Person.age = 40;
  print(Person.age);
}

class Person {
  String name = ''; //empty by default
//using static keyword, makes age at 'Person' level, not the copy level
  static int age = 0;

  ///member is associated with the class itself, rather than with instances of
  ///the class.

}
