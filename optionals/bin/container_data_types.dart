void main(List<String> args) {
  List<String>? names;

  ///it says this entire list could either be 'null' or it could be some 'names'
  List<String?>? ages; //both the list and its content could be nulls
  ages?.add('foo');
  ages?.add(null);
  print(ages);

  final String? first = ages?.first;
  print(first ?? 'no value at first index');

  names = []; // it is an empty list but it is valid
  names.add('value');

  final String? firstInd = null;

  /// we explicitly set it to null because it's a final variable
  print(firstInd ?? 'it doesn\'t exist');

  String? lastName;
  void changeLastName() {
    lastName = 'bar';
  }

  changeLastName();
  if (lastName?.contains('bar') ?? false) {
    print('last name contains bar');
  } else {
    print('it doesn\'t contain bar');
  }
}
