void main(List<String> args) {
  final babar = Person(height: 1.8);
  print(babar.height);
  final ghost = Dog(height: 1);
  print(ghost.height);
}

mixin HasHeight<H extends num> {
  H get height;
}

typedef HasIntHeight = HasHeight<int>;
typedef HasDoubleHeight = HasHeight<double>;

class Person with HasDoubleHeight {
  @override
  final double height;
  const Person({required this.height});
}

class Dog with HasIntHeight {
  @override
  final int height;
  const Dog({required this.height});
}
