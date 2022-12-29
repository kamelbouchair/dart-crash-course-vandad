void main(List<String> args) {
  const integers = [150, 10, 3];
  const doubles = [95.0, 10.5, 2];
  print(integers.reduce(devide));
  print(doubles.reduce(devide));
}

T devide<T extends num>(T rhs, T lfh) {
  if (rhs is int && lfh is int) {
    return rhs ~/ lfh as T;
  } else {
    return rhs / lfh as T;
  }
}
