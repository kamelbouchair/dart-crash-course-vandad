void main(List<String> args) {
  print(typesMatch(1, 2));
  print(typesMatch(1, 2.1));
  print(typesMatch('babar', 2));
  print(typesMatch('babar', 'fil'));
}

// bool typesMatch(Object a, Object b) {
// return a.runtimeType == b.runtimeType;
// }

//this generic is the same like the commented function above .
///'L': left, 'R': right...ur telling ur function that u expect 2 different
///data types and they also can be the same. then 2 params of this types then
///compare them with each other.
bool typesMatch<L, R>(L a, R b) => L == R;
