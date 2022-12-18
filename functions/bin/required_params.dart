void main(List<String> args) {
  doSomethingWith(name: 'babar fil');
//with required named param : the call has to always pass a value
  doSomethingWithAge(age: 42);
  doSomethingWithAge(age: null);
}

void doSomethingWith({required String name}) {
  print('hello, $name');
}

void doSomethingWithAge({required int? age}) {
  if (age != null) {
    final ageAfter2 = age + 2;
    print('after two years your age will be $ageAfter2');
  } else {
    print('you didn\' tell me about your age');
  }
}
///->when we don't specify a default value, the call site has to..
///..pass a value for this parameter
///->named required params can also be optional but they can not.. 
///..have default values 
