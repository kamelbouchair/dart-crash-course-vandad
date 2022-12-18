void main(List<String> args) {
  sayGoodByeTo('babar', 'fil');
  sayGoodByeTo('fil', 'babar');
  sayGoodByeTo(null, null);
}

///positional params are passed in order and don't have names..
///..associated with them at the call site
///they're always required and can not have default values

void sayGoodByeTo(String? name, String? anotherName) {
  print('good bye $name and $anotherName');
}
