void main(List<String> args) {
//the keys needs to bo unique within the map
  final info = {
    'name': 'babar fil',
    'age': 40,
  };
  print(info['name']);
  print(info['age']);
  print(info.keys);
  print(info.values);
  print('------------------------');

//add a key and an associated value for that key to map, only if that key doesn't exist
  info.putIfAbsent('height', () => 180);
  print(info);

  info.putIfAbsent('height', () => 190);
  print(info); //190 won't be printed because its key already exist

//if you don't care wether a key exist before you place a value,then say:
  info['weight'] = 230;
  print(info);
  print('------------------------');

  ///you can iterate through the entries within a map and every entry
  ///is a map entry which has a key and a value
  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }
  print('------------------------');

//if you want to test whether a map contains a key or not:
  if (info.containsKey('weight')) {
    print('babar fil weight is ${info['weight']}');
  } else {
    print('weight is not found');
  }
  print('------------------------');
}
