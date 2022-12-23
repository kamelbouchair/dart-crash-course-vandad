import 'package:collection/collection.dart';

///packages are pieces of program or libraries that people have created
///for us and they've publish them somewhere, ex: https://pub.dev
void main(List<String> args) {
  final names = {'babar', 'pokémon', 'fil', 'luffy'};
  names.add('fil');
  print(names);
//sets can't contain duplicate
  print('---------------------------');
//a way of getting rid of duplicates within lists using sets and spread operator

  final names2 = ['babar', 'fil', 'pokémon', 'fil'];
  final uniqueName = {...names2};
  print(uniqueName);
  print('----------------------------');

  ///hashcode is like a special int value using which sets understand
  ///whether a value can appear more than once inside the set
  final name = 'ringo';
  final name2 = 'Ringo';
  print(name.hashCode);
  print(name2.hashCode);
  if (name == name2) {
    print('names are equal');
  } else {
    print('names are not equal');
  }
  print('-----------------------------');
//we cannot do this type of comparison between sets usually
  final ages = {20, 30, 40};
  final ages1 = {20, 30, 40};
  if (ages == ages1) {
    print('ages are equal');
  } else {
    print('ages are not equal');
  }
  print('------------------------------');

  ///if you wanna do a comparison between these two sets, you have to use
  ///a class in here which is called 'set equality'.
  ///we use the class(setEquality) which is imported from the package, it
  ///does deep comparison regardless of the placing of the elements inside sets
  if (SetEquality().equals(ages, ages1)) {
    print('ages are equal');
  } else {
    print('ages are not equal');
  }
//sometimes sets allow duplicate values inside them, and that's because of hashcode, and equality
}
