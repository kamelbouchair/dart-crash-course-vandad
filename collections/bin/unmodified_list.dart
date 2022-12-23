import 'dart:ffi';

import 'package:collection/collection.dart';

void main(List<String> args) {
  ///if you want to protect your list from being modified(read only), we
  ///use something called 'unmodifiable list view',and it's imported from
  ///collection package
  final names = ['babar', 'pokémon', 'fil', 'luffy'];
  names.add('ninja');
  try {
    final readOnlyList = UnmodifiableListView(names);
    readOnlyList.add('doni');
  } catch (e) {
    print(e);
  }
}
