void main(List<String> args) {
  tryCreatingPerson(age: 20);
  tryCreatingPerson(age: -4);
  tryCreatingPerson(age: 145);
}

///error and exception are very similar to each other bur there is one big
///distinction between them, and that is exceptions are meant to be caught
///whereas errors are not meant to be caught.
///exception: is something u as a programmer cannot plan for, ex: getting data from
///a user and passing it to a class that does something and that class cannot
///for instance accept that value .
///an error: is when something is clearly documented (param of a function) as being
///acceptable from values for instance 0 to 100, but then you pass a value of 3000
///to it, that would be a programmer error that caused that problem.

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
  print('-------------');
}

class Person {
  final int age;
  Person({required this.age}) {
    if (age < 0) {
      throw Exception('age must be positive');
    } else if (age > 140) {
      throw 'age must be less than 140';
    }
  }
}
