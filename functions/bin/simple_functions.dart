void main(List<String> args) {
  printWow();

  ///you pass inside () the list of params that the function expect
  ///where you invoke this function is called a call site
  ///is the site at which ur calling this function
} //a call site: is a term being used in PL when ur calling a function

void printWow() {
  print('wow!'); //|->all of this called the definition of the function
} //optional list of params(...)

void printHello(int one, String eince) {}
// an empty body is also optional
