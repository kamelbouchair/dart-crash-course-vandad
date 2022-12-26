void main(List<String> args) {
  const me = Person('kamal', 30);
//const keyword means that the constructor returns a constant value
  print(me.name);
  print(me.age);

  const babar = Person.babar();
  print(babar.name);
  print(babar.age);

  const luffy = Person.luffy(20);
  print(luffy.name);
  print(luffy.age);

  const zoro = Person.onepeace();
  print(zoro.name);
  print(zoro.age);

  const shanks = Person.onepeace(name: 'shanks');
  print(shanks.name);
  print(shanks.age);

  const sno = Person.onepeace(name: 'sno', age: 35);
  print(sno.name);
  print(sno.age);
}

class Person {
  final String name;
  final int age;
//we can have different constructors for every class

  const Person(this.name, this.age);
//this is a constructor with positional params

  const Person.babar()
      : name = 'babar',
        age = 40;
//this is a named constructor with an initializer list

  const Person.luffy(this.age) : name = 'luffy';
//this constructor take the age as a param and sets the name to luffy

  const Person.onepeace({
    String? name,
    int? age,
  })  : name = name ?? 'zoro',
        age = age ?? 25;

  ///a constructor optionally takes a name and age, otherwise they have
  ///default values.
  ///named params are inside curly brackets,they're not required meaning
  ///that you don't have to pass them(the're optional)
}
