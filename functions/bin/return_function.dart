void main(List<String> args) {
  final babar = (doOneThing(20, 30));
  print(babar());
  print(doAnotherThing(30, 20)());
}

int Function() doOneThing(
  int a,
  int b,
) =>
    () => a + b;
// functions can return another functions
int Function() doAnotherThing(
  int c,
  int d,
) =>
    () => c + d;
