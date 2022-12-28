void main(List<String> args) {
  print(AnimalType.dog.nameContainsUpperCaseLetter);
  print(AnimalType.cat.nameContainsUpperCaseLetter);
  print(AnimalType.goldFish.nameContainsUpperCaseLetter);
}

enum AnimalType {
  dog,
  cat,
  goldFish,
}

extension on Enum {
  bool get nameContainsUpperCaseLetter => name.contains(RegExp(r'[A-Z]'));
}
