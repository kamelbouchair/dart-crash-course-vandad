void main(List<String> args) {
  const JSON<String> json = {
    'name': 'babar fil',
    'adress': '123 street jungle',
  };
  print(json);
}

//type definitions are generics as well.

//constrain an existing data type to a generic type..to one type (String)
typedef JSON<T> = Map<String, T>;
