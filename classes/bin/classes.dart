void main(List<String> args) {
  final person1 = Person(
    name: 'babar fil',
    age: 40,
  );
  print(person1.age);
  print(person1.name);
//person1 is like you made a copy of this Person class and hand it out here
}

///classes are like blueprint of information(logic), and you basically
///create this logic in one place , then you can reuse this logic in many
///other different places, this blueprint itself like the main logic
///is called a 'class' and copies of this logic that you hand out to other
///people who need are called 'instances'.
///you have always one class that does something and then you can have
///many instances of that class.

class Person {
//every person have a name and age
  final String name;
  final int age;
//every class needs to have a constructor where it has properties.
  const Person({
    required this.name,
    required this.age,
  });

  ///constructor is a special function, who's job is to create an instance
  ///of this Person, constructor has to initialize Person properties
}
