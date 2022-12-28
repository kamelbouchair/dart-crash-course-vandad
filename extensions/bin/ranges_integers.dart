void main(List<String> args) {
  print(1.to(10));
  print(1.to(10, inclusive: false));
  print(10.to(1));
  print(10.to(1, inclusive: false));
  print(10.to(10));
  print(10.to(10, inclusive: false));
  //1.to(10)-> Iterable [1,2,3,4,5,6,7,8,9,10]
  //10.to(1)-> Iterable [10,9,8,7,6,5,4,3,9,1]
  //1.to(10)-> inclusive last, Iterable [1,2,3,4,5,6,7,8,9]
}

extension on int {
  //end is 10, and 'this' is the current value we're in
  Iterable<int> to(int end, {bool inclusive = true}) => end > this
      ? [for (var i = this; i < end; i++) i, if (inclusive) end]
      : [for (var i = this; i > end; i--) i, if (inclusive) end];
}
