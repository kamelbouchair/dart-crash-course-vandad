void main(List<String> args) {
  const names = ['babar', 'pokémon', 'fil', 'luffy'];

  for (var name in names) {
    print(name);
  }
  print('-----------------------');

// reversed the list with this method
  for (var name in names.reversed) {
    print(name);
  }
  print('------------------------');

//dart is case sensitive language
  if (names.contains('Babar')) {
    print('babar is here');
  } else {
    print('make it lower case');
  }
  print('-------------------------');

//it returns a bool, then print a value if it's true
  for (var name in names.where((String name) => name.startsWith('b'))) {
    print(name);
  }
  print('--------------------------');

//subscripts on list means:you go and peek at the list at the specific index
  print(names.elementAt(0));
  print(names[0]);
//try and catch is not recommended you should go and check length list
  try {
    print(names[4]);
  } catch (e) {
    print(e);
  }
  print('---------------------------');

  print(names.sublist(1, 3)); //[pokémon, fil]
  names.sublist(0, 2).forEach((print)); // babar , pokémon
  names.sublist(0, 3).forEach((print)); // babar, pokémon, fil
  print('----------------------------');
  final ages = [20, 30, 35, 42];
  ages.add(45);
  ages.add(50);
  print(ages);

  print('----------------------------');

//map method: is the most used in dart
  ['rafael', 'donatilo', 'angelo']
      .map((str) => str.length)
      .forEach((print)); //transform it into integers(another type)
  ['rafa', 'doni', 'miky']
      .map((str) => str.toUpperCase())
      .forEach((print)); //transform it to String(same type)
  print('-----------------------------');

  final numbs = [1, 2, 3, 4];
  var sum = 0;
  for (final numb in numbs) {
    sum += numb;
  }
  print(sum);

  ///fold: starts with the value of 0, and this 0 will be passed to the first
  ///param(previousValue) by default, and then go through in the elements
  ///inside the list and then grab the first value and put it in (naxtValue)
  ///and the result after concatenating will be added to(peviousValue) and so on
  print('-------------------------------');

  sum = numbs.fold(
    0,
    (
      int previousValue,
      int nextValue,
    ) =>
        previousValue + nextValue,
  );
  print(sum);
  print('---------------------------------');

  var totalLength = names.fold(
    0,
    (
      total,
      str,
    ) =>
        total + str.length,
  );
  print(totalLength);
}
