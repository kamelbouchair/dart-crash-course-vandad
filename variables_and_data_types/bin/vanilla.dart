void main(List<String> args) {
  var adress = '123 Main st';
  print(adress);
  adress = '345 Main st';
  print(adress);
  adress = adress.replaceAll('Main', 'Bla');
  print(adress);
}
