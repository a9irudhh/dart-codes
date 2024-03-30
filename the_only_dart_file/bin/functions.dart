import 'dart:ffi';

void main(List<String> args) {
  helloWorld("Print");
  print(printHello());

  greet();
  greet(name: null); // if such parameter is passed then named parameter should be specified
  greet(name: 'Foo');


  printSomething();
  printSomething(someThing: null);
  printSomething(someThing: 'Anirudh');

}

void helloWorld(String name){
  print(name);
}
// if we don't mention the return datatype dart assumes it to be dynamic and returns null
printHello() {}

void greet({String? name}){ // and if we are using { } it becomes named parameter (and it should have a default value or it should be an optional)
  print("Hello!, $name");
}

void printSomething({
  String? someThing = 'Hello World',
}) {
  print(someThing);
}