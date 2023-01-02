void main(List<String> args) async {
  await for (final val in getValue()) {
    print(val);
  }

  try {
    await for (final number in getNumbers()) {
      print(number);
    }
  } catch (e) {
    print(e);
  }
}

//(1 sec delay) 0,(1 sec delay) 1, (1 sec delay) 2, (1 sec delay)...9
Stream<int> getValue() async* {
  ///in order to be able to use await and yield alongside each other you to
  ///add * after async keyword
  for (var i = 0; i < 10; i++) {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    yield i;
//this yield will insert this given value within the stream
  }
}

Stream<String> getNumbers() async* {
  await Future.delayed(
    const Duration(seconds: 1),
  );
  yield 'babar';
  throw Exception('something went wrong');
}
