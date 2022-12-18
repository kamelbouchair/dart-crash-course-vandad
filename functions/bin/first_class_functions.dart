void main(List<String> args) {
  print(performOperation(10, 20, (a, b) => a + b));
  print(performOperation(10, 20, (a, b) => a - b));
}

//functions can be passed to other functions(they're 1st class citizens)
/// as you can pass an int to a function you should be able..
///..to pass a function to a function
// Dart is capable of describing a function as a data type
// everything that is describable as a data type can be passed to another function
int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);
