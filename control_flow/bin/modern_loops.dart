void main(List<String> args) {
  const names = ['babar', 'pokémon', 'fil', 'luffy'];

  for (final name in names) {
    print(name);
  }
  print('--------------');
  for (final name in names.reversed) {
    print(name);
  }
  print('---------------');
  for (final name in names) {
    if (name.startsWith('b')) {
      continue; //if the condition is true it doesn't excute the print and jump over the loop again
    } else {
      print(name);
    }
  }
  print('--------------');
  for (final name in names) {
    if (name == 'fil') {
      break; //if the condition is true it breaks out of the loop to line 24
    } else {
      print(name);
    }
  }
  print('--------------');
  for (final name in names) {
    if (name == 'luffy') {
      continue; //continue will consider that 'luffy' is the last item on the list so it will break out of the loop
    } else {
      print(name);
    }
  }
  print('--------------');
  for (int value in Iterable.generate(10)) {
    print(value); //this is how we create a range in Dart
  }
}
//modern loops are equivalent to classic loops except loosing the access to index
