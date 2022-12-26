void main(List<String> args) {
  final dekious = Cat();
  dekious.age = 3;
  print(dekious.age);
  dekious.incrementAge();
  print(dekious.age);
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age = 0;
}
