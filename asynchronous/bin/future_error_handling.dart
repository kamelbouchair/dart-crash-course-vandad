void main(List<String> args) async {
  try {
    print(await getFullName(
      firstName: 'babar',
      lastName: 'fil',
    ));
    print(await getFullName(
      firstName: 'babar',
      lastName: '',
    ));
  } on FirstOrLastMissingException {
    print('first or last name is missing');
  }
}

Future<String> getFullName({
  required String firstName,
  required String lastName,
}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastMissingException();
  } else {
    return Future.value('$firstName, $lastName');
  }
}

class FirstOrLastMissingException implements Exception {
  const FirstOrLastMissingException();
}
