late String name;

///it's like a contract between the developer and the framework
///you're telling it that I guarantee you I'm gonna assign this to something
/// before I use it
void main(List<String> args) {
// late variables are initialized when they're first used
  print('before');
  late String name = provideName();
  print('after');
  print(name);
  //with late var: the function is called only when it's used
}

String provideName() {
  print('function is called');
  return 'babar fil';
}
