void main(List<String> args) {
  const names = ['babar', 'pokémon', 'fil', 'luffy'];
  int counter = 0;
  do {
    print(names[counter]);
    counter++;
  } while (counter < names.length);
  print('---------');

  counter = 0;
  do {
    print(names[counter]);
    counter++;
    if (counter == 2) {
      //when counter == 2, break out of the loop
      break;
    }
  } while (counter < names.length);
  print('----------');

  counter = 0;
  do {
    final name = names[counter];
    counter++;
    if (name == 'fil') {
      //when name == 'fil', don't execute and jump over the loop again
      continue;
    }
    print(name);
  } while (counter < names.length);
}
// it executes the code inside {} and then looks at the condition
