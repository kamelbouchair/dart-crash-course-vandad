void main(List<String> args) {
  final myList2 = [1, 2, 3];
  print(myList2);
  myList2 = [3, 4, 5]; // we can not re-assign final variable to a new value
  myList2.removeAt(0); // but we can modify its content after we created it
  myList2.add(6);
  print(myList2);
  final age = 20;
  const age2 = age; // but we can't assign final value t const variable
}
