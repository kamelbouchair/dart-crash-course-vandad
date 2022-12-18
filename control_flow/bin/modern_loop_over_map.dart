void main(List<String> args) {
  const info = {
    'name': 'babar fil',
    'height': 170,
    'weight': 250.6,
    'isMarried': true,
    'adresse': {
      435,
      'Jungle route Zimbabwi',
    }
  };
  for (final entry in info.entries) {
    print('${entry.key}, ${entry.value}');
  }
}
