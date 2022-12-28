void main(List<String> args) {
  final myAgeThisYear = Person(age: 30);
  print(myAgeThisYear);
  final myAgeNextYear = myAgeThisYear + 1;
  print(myAgeNextYear);
}

class Person {
  final int age;
  const Person({required this.age});

  Person operator +(int age) => Person(
        age: this.age + age,
      );

  @override
  String toString() => 'my age this year is $age';
}
