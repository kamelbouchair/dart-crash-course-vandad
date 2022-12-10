void main(List<String> args) {
  late final getValuePrint = getValue();
  print('we are here');
  print(getValuePrint);
  // late variables are initialized only when they're first used
}

int getValue() {
  print('getValue called');
  return 10;

  //printed in console :
  // we are here
  // getValue called
  // 10

  //what is expected to be printed :
  // getValue called
  // we are here
  // 10
}
