void main(List<String> args) {
  sayHelloTo(name: 'babar');
  sayHelloToYou(fullname: null);

  ///named params inside{} have a rule that the call site..
  ///..doesn't have to pass a value for those params
}

void sayHelloTo({String name = 'bob'}) {
  // named params always has to have a value
  print('hello, $name');
}

///when you have your params inside{} they either need to have..
///..a default values or they need to be optional "?"
void sayHelloToYou({String? fullname}) {
  print('hello mr. $fullname');
}
