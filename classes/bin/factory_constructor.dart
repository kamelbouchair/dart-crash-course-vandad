void main(List<String> args) {
  final vehicle = Vehicle();
  print(vehicle);
  print(Vehicle.car());
  print(Vehicle.truck());
}
//normal constructors can only create an instance of tha class.
//factory constructors can create instances of their subclasses(its main power).

class Vehicle {
  const Vehicle();

  ///a factory constructor either it creates an instance of this class or it
  ///creates an instance of one of its subclasses.
  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'vehicle of type $runtimeType';
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
