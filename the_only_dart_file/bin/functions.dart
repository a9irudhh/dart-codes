void main(List<String> args) {
  helloWorld("Print");
  print(printHello());

  greet();
  greet(name: null); // if such parameter is passed then named parameter should be specified
  greet(name: 'Foo');


  printSomething();
  printSomething(someThing: null);
  printSomething(someThing: 'Anirudh');

  // tellYourAge(); //you cannot leave it empty when the parameter is required
  tellYourAge(age: 42);
  tellYourAge(age: null);


  getSomeName();
  getSomeName(null);
  getSomeName(null, null);
  getSomeName('Foo');
  getSomeName('Foo', 'Bar');


  // functions as first class citizens
  int someOperation(
    int a,
    int b,
    int Function (int, int) operation,
  ) => operation(a, b);


  print(someOperation(10, 5, (a, b) => a+b));
  print(someOperation(10, 5, (a, b) => a-b));

  //we can use the functions which we defined as diff and add also
  print(someOperation(10, 5, add));
  print(someOperation(10, 5, diff));

  // returning functions from functions (seldomly its used know that it exists)
  int Function() doSomething(
    int lhs,
    int rhs,
  ) => 
    () => lhs+rhs;

    print(doSomething(10, 15)());
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

void tellYourAge({
  required int? age,
}) {
  if (age != null) {
    print('Youll be ${age+2} in next 2 years');
  } else {
    print("You didn't tell me your age");
  }
}


// optional positional parameters
void getSomeName([
  String? idkFirstName,
  String? idkLastName,
]) {
  print('Hello $idkFirstName, your Last name is $idkLastName');
}

/* We can have a mixture of positional-Named-optional parameters
void getSOmeName(
  String IdkNAme,{
    String? lastNAme = 'Anirudh',
  }
){
  print("{$IdkNAme}, {$lastNAme}");
}
*/

// arrow function (simpler version of below code)
/*
int diff(int lhs, int rhs){
  return lhs - rhs;
}
*/
int diff(int lhs, int rhs) => lhs-rhs;
int add(int lhs, int rhs) => lhs+rhs;

