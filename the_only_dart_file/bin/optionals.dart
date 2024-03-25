void main(List<String> args) {
  // optionals (nullable values)
  int? a;
  print(
      a); // if this wasn't a optional datatype then we'd be getting an error stating
  // non nullable local variable must be initialized before it's used

  String? name;
  print(name);

  /*
  int? x= 20;
  if(x == null) // **static analysis** throws a error here stating operand cannot be null
    print('Age is Null');
  */

  String? name1;
  // name1 = 'AN';
  name1 ??=
      'Anirudh'; // ??= is a null-coalescing assignment operator => meaning it assigns the
  //                                                 values of RHS only if the
  //                                                 LHS evaluates to null
  print(name1);

  // containers
  List<String?>? names = [];
  names.add(null);
  names.add('Anirudh');
  print(names);


  List<String>? names1 = null;
  names1?.add('anirudh');
  print(names1);
}
