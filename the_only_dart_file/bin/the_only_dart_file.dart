void main(List<String> args) {
  const name = 'ani';
  // name = 'anirudh' <- this is not allowed
  print(name);

  final name1 = [1, 2, 3, 4];
  name1.removeAt(2); // final allows us to modify the internal value assigned to it
  // name1 = [9,8,7,6] <- this isn't allowed (reassigning the new value to const vaiable)
  print(name1);


  const variable = 10;
  final num1 = variable;
  print(num1);
  //this isn't allowed as the final variable can internally be modified 
  /*
    final variable1 = 10;
    const num2 = variable1;
    print(num2);
  */
  
  // it isn't industry standard to use var (it's good to mention the data type explicitly)
  // we can actually throw error wtho analysis_options.yaml regarding specifying the datatypes
  //      linter:
  //          rules:
  //             - always_specify_types

  var name2 = 'Anirudh';// dynamically adjusts the datatype
  print(name2);

  final list1 = [1,2,3];
  list1.add(4);
  print(list1);


  /*
    from the below code we get to know how late variables 
    gets initialised when they are used
        -> expected o/p: 
                        get num called
                        we are here
                        10
        -> o/p which we get:
                        we are here 
                        get num called 
                        10;
  */
  late final num3 = getNum();
  print("We are Here");
  print(num3);

  // type promotion on what values you assign 
  final age = 30.0; // double for 30.0 and 30 for int
  print(age);


  /// other datatypes are bool, int, double, character, string, symbol, dynamic etc
}


// called function 
int getNum() {
  print("get num called");
  return 10;
}