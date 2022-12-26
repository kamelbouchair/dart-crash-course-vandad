void main(List<String> args) {
  final ghost = Animal(name: 'ghost', type: AnimalType.rabbit);
  print(ghost.name);

  if (ghost.type == AnimalType.cat) {
    print('this is a cat');
  } else {
    print('this is a cat');
  }
  //try to use 'switch' statement instead of 'if' when comparing with enumerations

  switch (ghost.type) {
    case AnimalType.dog:
      print('this is a dog');
      break;
    case AnimalType.cat:
      print('this is a cat');
      break;
    case AnimalType.rabbit:
      print('this is a rabbit');
      break;
  }
}

///enumerations allow you to create similar objects in one structure
///and that is the goal of enumeration.
//the first letter of every enum name should be uppercase

enum AnimalType { dog, cat, rabbit }

class Animal {
  final String name;
  final AnimalType type;
//you can use enum as a data type
  const Animal({required this.name, required this.type});
}
