void main(List<String> args) {
  final name1 = getName();
  final name2 = getName();
  print(name1);
  print(name2);

  ///normal functions when you call them the app stops executing the caller
  ///function, main function is calling getName() function so execution will
  ///literally stop in that function until getName(), returns.
  ///however if you call a function that returns a 'future' the execution of the
  ///caller function will just continue, it doesn't really care when'future ends
  ///unless she asks the app to wait for th result and that's using 'await' syntax.
}

///futures are pieces of functionality that will complete their work in the
///future as their name indicates, a usual function that you call, you take
///some input pass to the function and ask the function to do some work and
///when the function done you get the result back.
String getName() => 'babar fil';
