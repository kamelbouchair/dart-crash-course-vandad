void main(List<String> args) {
  const names = ['babar', 'pokémon', 'fil', 'luffy'];
  int counter = 0; // 'babar'
  while (counter < names.length) {
    print(names[counter]);
    counter++;
  }
  print('--------');
  counter = -1; // 'luffy'
  while (++counter < names.length) {
    print(names[counter]);
  }
  print('---------');
  counter = names.length; // 4 (it prints the inverse)
  while (--counter >= 0) {
    print(names[counter]);
  }
}
///it's a loop that evaluate just a condition(in the beginning) and if that 
///condition is met then the loop is executed, then the next time comes back
///to the condition and if it's still true the loop will be executed again
///otherwise it will jump out of the loop 
// while = as long as
