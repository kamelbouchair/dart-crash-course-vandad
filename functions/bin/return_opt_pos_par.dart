void main(List<String> args) {
  print(add());
  print(add(3));
  print(add(4, 5));
  print(minus(15, 10));
}

int add([int a = 2, int b = 3]) => a + b;
int minus([int a = 30, int b = 20]) => a - b;
