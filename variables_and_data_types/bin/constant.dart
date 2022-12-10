void main(List<String> args) {
  const myList = [1, 2, 3];
  print(myList);
  myList = [3, 4, 5]; // we can not re-assign const variable to a new value
  myList.removeAt(0); // we also can not modify its content once we created it
  myList.add(6);
  print(myList);
  const age = 10;
  final age2 = age; // we can assign a const value to final variable
}
