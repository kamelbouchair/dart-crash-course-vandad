void main(List<String> args) {
  makeUpperCase();
  makeUpperCase('babar');
  makeUpperCase(null, 'fil');
  makeUpperCase('babar', 'fil');
}

///optional positional params can be optional and be ommited or..
///..they can be non-optional and require default values
void makeUpperCase([String? firstName, String lastName = 'pokémon']) {
  print(firstName?.toUpperCase());
  print(lastName.toUpperCase());
}
