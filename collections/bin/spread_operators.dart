void main(List<String> args) {
//spread operators are very usefull when it comes to collections
  addToListWrong();
  print('-------------------------');
  addToListRight();
  print('-------------------------');
  addToMapWrong();
  print('-------------------------');
  addToMapRight();
}

void addToListWrong() {
  final names1 = ['babar1', 'pokémon1', 'fil1', 'luffy1'];
  final names2 = ['babar2', 'pokémon2', 'fil2', 'luffy2'];
//we collect to lists inside one var, 'allNamesWrong' include all values from names1,2
  final allNamesWrong = names1;

  ///this assignment is not copying the content of names1 to 'allNamesWrong'
  ///it is indeed assigning the exact contents, of like exact variables and
  ///memory position to 'allNamesWrong', if you modify one you're probably
  ///going to affect the other, because the're pointing at the same memory space
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
//this is the wrong way of doing this
}

void addToListRight() {
  final names1 = ['babar1', 'pokémon1', 'fil1', 'luffy1'];
  final names2 = ['babar2', 'pokémon2', 'fil2', 'luffy2'];
  final allNamesRight = [...names1, ...names2];
  print(names1);
  print(names2);
  print(allNamesRight);
//this is the right way of doing this
}

void addToMapWrong() {
  // adding to const will crash
  const info = {
    'name': 'babar fil',
    'age': 40,
    'address': {
      123,
      'street jungle',
    }
  };
  try {
    final result = info;
    result.addAll({'height': 160});
  } catch (e) {
    print(e);
  }
// this is th wrong way of doing this
}

void addToMapRight() {
  const info = {
    'name': 'babar fil',
    'age': 40,
    'address': {
      123,
      'street jungle',
    }
  };

  final result = {...info}..addAll({'height': 160});
  print(result);
//this is the right way of doing this
}
