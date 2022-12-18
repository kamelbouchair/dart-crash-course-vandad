void main(List<String> args) {
  print(returnDynamic()); // it prints "null"
  returnNone(); //if the function returns void you just invoke it..
  //..you can't assign it to a variable
}

void returnNone() {
  print('marhaba');
} //returns none

String returnSomething() {
  return 'babar fil';
} //returns a String

returnDynamic() {} // the return type is dynamic by default
//every function does return null if you don't specify any return value for it
