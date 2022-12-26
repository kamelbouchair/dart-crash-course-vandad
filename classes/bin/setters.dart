void main(List<String> args) {
  final car = Car();
  try {
    car.drive(speed: 10);
    car.drive(speed: -1);
  } catch (e) {
    print(e);
  }
}

///setters are: you'll have the ability to control when someone changes the
///values of your properties inside your classes.

class Car {
  int _speed = 0;

  ///The getter will simply return the speed, but setter will check the incoming
  ///speed, if it's less than 0 it will throw an exception.
  int get speed => _speed;
  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception('speed can not be under zero');
    } else {
      _speed = newSpeed;
    }
  }

  void drive({required int speed}) {
    this.speed = speed;
    print('car speed is ${speed}Km/h ');
  }

  void stop() {
    print('speed is decreasing');
    print('car is stoped...');
  }
}
