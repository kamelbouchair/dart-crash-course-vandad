void main(List<String> args) {
  final person = Person();
  print(person.speed);
  person.jump(speed: 12.0);
  person.walk(speed: 22.0);
}

///mixin allow you to create functionality, or functions variables properties
///inside the mixin, and then bring the mixin into various enums or classes.

mixin HasSpeed {
  abstract double speed;

  ///'abstract' property keyword means that whichever type (enum or class)
  ///that brings in the 'mixin', has to have this property.
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping at $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is walking at $speed');
    this.speed = speed;
  }
}

class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed = 0.0;

  ///An abstract property is a property that doesn't have an implementation,
  ///but must be implemented by classes that use the mixin.
}
