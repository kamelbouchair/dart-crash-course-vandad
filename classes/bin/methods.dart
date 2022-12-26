void main(List<String> args) {
  final myCar = Car();
  print('speed is ${myCar.speed}');
  myCar.drive(speed: 60);
  print('car is accelerating speed to ${myCar.speed}');
  myCar.drive(speed: 20);
  print('car is decreasing speed to ${myCar.speed}');
  myCar.stop();
  myCar.drive(speed: 0);
}

class Car {
//we created a property with its dataType name, so it can be both read and set
  int speed = 0;

  void drive({required int speed}) {
    this.speed = speed;
    print('car speed is ${speed}Km/h ');
  }

  void stop() {
    print('speed is decreasing');
    print('car is stoped...');
  }
}
