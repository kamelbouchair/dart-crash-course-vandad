import 'dart:collection';

void main(List<String> args) {
  ///the point of doing unmodifiable collections is when you have a class
  ///for instance and that class exposes a list anyone can get access to
  ///that list and add stuff to it,and you don't want that (encapsulation..
  ///..purposes) you just simply hide your lists or maps.

  final info = {
    'name': 'babar fil',
    'age': 40,
    'address': {
      123,
      'street jungle',
    }
  };
  final info2 = UnmodifiableMapView(info);
  info.addAll({'phone number': 123456});
  print(info);
//when you want to add something to (info2) map, you'll get an error
  try {
    info2.addAll({'phone number': 123456});
    print(info2);
  } catch (e) {
    print(e);
  }
}
