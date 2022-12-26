void main(List<String> args) {
//they're called enhanced enums with values
  final babarFil = Person(
    name: 'babar fil',
    car: Car.teslaModelX,
  );
  print(babarFil.name);
  print(babarFil.car);

  switch (babarFil.car) {
    case Car.teslaModelX:
      print('babar fil has Tesla Model X : ${babarFil.car}');
      break;
    case Car.teslaModelY:
      print('babar fil has Tela Model Y :${babarFil.car}');
      break;
  }
}

class Person {
  final String name;
  final Car car;

  const Person({
    required this.name,
    required this.car,
  });
}

enum Car {
  teslaModelX(
    model: 'ModelX',
    manufacturer: 'Tesla',
    year: 2022,
  ),

  teslaModelY(
    model: 'TeslaModelY',
    manufacturer: 'Tesla',
    year: 2023,
  );

  final String model;
  final String manufacturer;
  final int year;

  const Car({
    required this.model,
    required this.manufacturer,
    required this.year,
  });

  @override //from TeslaModelX, TeslaModelY functions
  String toString() => 'Car : $manufacturer, $model, $year';
}
