void main(List<String> args) {
  const names = ['babar', 'pokémon', 'fil', 'luffy'];

  // 0 1 2 3
  for (var i = 0; i < names.length; i++) {
    print(names[i][0]);
  }
  print('---------');
  // 3 2 1 0
  for (var i = names.length - 1; i >= 0; i--) {
    print(names[i]);
  }
  print('---------');
  // 0 2
  for (var i = 0; i < names.length; i += 2) {
    print(names[i]);
  }
}
