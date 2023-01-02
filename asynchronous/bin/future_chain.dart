void main(List<String> args) async {
  final length = await calcuateLength(await getFullName());
  print(length);
}

Future<String> getFullName() => Future.delayed(
      const Duration(seconds: 1),
      () => 'babar fil',
    );

Future<int> calcuateLength(String value) => Future.delayed(
      const Duration(seconds: 1),
      () => value.length,
    );
