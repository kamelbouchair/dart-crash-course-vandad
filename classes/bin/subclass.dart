void main(List<String> args) {
  final engine = Vehicle('V6', 4);
  print(engine);
  print(Truck());
  print(Bicycle());
}
//subclassing is kinda like inheriting logic from one class to another.
//every class in dart is implicitly a subclass of 'Object'.

class Vehicle {
  final String engine;
  final int wheelCount;
  const Vehicle(this.engine, this.wheelCount);

  ///override simply means that you have a function in a super class and you
  ///are trying to re-implement it, so overriding is kinda re-implementing.
  ///it's like you're telling dart, i know 'Object' has this function but I
  ///actually want to create my own implementation.

  @override
  String toString() {
//this is how you override a function that comes from a super-class.
    return '$runtimeType has $engine engine and $wheelCount wheels traction';
  }
//'toString' method returns a string representation of the class 'Vehicle'.
  ///this 'runtimetype' gives you the type of your class, and then you can
  ///enter your property with string concatenation.

}

class Truck extends Vehicle {
  const Truck() : super('V8', 8);
}
//you can acces your super class using 'super' keyword.

class Bicycle extends Vehicle {
  const Bicycle() : super('electric', 2);
}
