void main(List<String> args) {
  const myName = 'babar';
  const yourName = 'fil';

  if (myName == yourName) {
    print('we have the same name');
  } else if (myName == 'babar' && yourName == 'fil') {
    print('my name is $myName and your name is $yourName');
  } else if (myName == 'babar' || yourName == 'fil') {
    print('my name is $yourName and your name is $myName');
  } else {
    print('we have different names');
  }
}

///if stat usually looks for something that evaluates to a bool(true, false)
///..whether something is = to something or something != to something
///..or something contains x amount of something else  
