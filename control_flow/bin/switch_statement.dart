void main(List<String> args) {
  describe(1);
  describe(1.1);
  describe('babar fil');
  describe({1: 'babar'});
  describe([1, 2, 3, 4]);
}

//generic<T>: take any value of any data type and try to explain what it is
void describe<T>(T value) {
  switch (T) {
    case int:
      print('this is an integer');
      break;
    case double:
      print('this is double');
      break;
    case String:
      print('this is a string');
      break;
    case Map<int, String>:
      print('this is a map');
      break;
    default:
      print('this is something else');
      break;
  }
}
