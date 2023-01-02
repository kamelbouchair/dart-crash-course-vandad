void main(List<String> args) async {
  print(await getFullName());
  print(await getPhoneNumber());
  print(await getAdresse());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());

  ///The await keyword is used to pause the execution of the main function until
  ///the value contained in the Future object is available. This is useful
  ///because it allows the program to do other things while it is waiting for
  ///the Future to complete.
}

Future<String> getFullName() async => 'babar fil';
Future<String> getPhoneNumber() => Future.value('123 street jungle');
Future<String> getAdresse() =>
    Future.delayed(const Duration(seconds: 1), () => '009 456 653');

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'New York';
}

Future<String> getCountry() async => 'Africa';

//async keyword doesn't contribute with anything here.
Future<String> getZipCode() async => Future.delayed(
      const Duration(seconds: 1),
      () => '1256',
    );
