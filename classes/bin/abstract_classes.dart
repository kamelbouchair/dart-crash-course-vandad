void main(List<String> args) {
  const car = Car();
  print(car.kind);
  car.accelerate();
  car.decelerate();
  final truck = Truck();
  print(truck.kind);
  truck.accelerate();
  truck.decelerate();
}

//abstract classes are blueprint of blueprint

abstract class Vehicle {
  final VehicleKind kind;
  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

enum VehicleKind { car, truck, motorcycle, bicycle }
//there are 2 ways of using abstract classes:1-by extending, 2-by implementing

class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

class Truck implements Vehicle {
  const Truck();
  @override
  void accelerate() => print('truck is accelerating');

  @override
  void decelerate() => print('truck is decelerating');

  @override
  VehicleKind get kind => VehicleKind.truck;
}
