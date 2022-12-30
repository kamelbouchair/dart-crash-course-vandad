void main(List<String> args) {
  tryCreatingPerson(age: 20);
  tryCreatingPerson(age: -4);
  tryCreatingPerson(age: 145);
}

///if you see that ur throwing a specific type of exception a lot of times like
///'invalid age', it's a good idea to go ahead and create a custom exception class
///that can basically prepare the message for you(special properties you can use
///inside your application when ur catching, or throwing ur exception).
void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeExceptions catch (exception, strackTrace) {
    print(exception);
    print(strackTrace);
  }
  print('-------------');
}

class InvalidAgeExceptions implements Exception {
  final int age;
  final String message;

  InvalidAgeExceptions(this.age, this.message);

  @override
  String toString() => 'InvalidAgeExceptions, $message, $age';
}

class Person {
  final int age;
  Person({required this.age}) {
    if (age < 0) {
      throw InvalidAgeExceptions(age, 'age cannot be negative');
    } else if (age > 140) {
      throw InvalidAgeExceptions(age, 'age is greater than 140');
    }
  }
}
