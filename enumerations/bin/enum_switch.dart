void main(List<String> args) {
  final poof = AnimalType.rabbit;
  final vehicle = VehicleType.truck;

  switch (poof) {
    case AnimalType.rabbit:
      print('this is a rabbit');
      break;
    default:
      break;
  }
  switch (vehicle) {
    case VehicleType.car:
    case VehicleType.motorCycle:
    case VehicleType.bicycle:
      print('most common vehicle');
      break;
    case VehicleType.truck:
      print('usually used for work');
      break;
  }
}

enum AnimalType { dog, rabbit, monkey, cat }

enum VehicleType { car, truck, motorCycle, bicycle }
