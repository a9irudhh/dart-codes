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

  /*
  String? firstName;
  print(firstName!); (shouldn't be used at prodution level)
  */
  // ! operator as a null checker
  // it throws a error stating Unhandled exception:
  // Null check operator used on a null value
  // #0      main (file:///E:/flutter/dart/dart-codes/the_only_dart_file/bin/optionals.dart:36:18)
  // #1      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:33)
  // #2      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)

/*(Dont forget to comment the function below if you're uncommenting this)
  String getFullName() {
    return 'Anirudh H';
  } 

  String? getFullNameOptional(){
    return null;
  }

  String? fullName = getFullName();
  print(fullName);

  // conditional statements (apart from ==,<=,>= )
  if(fullName?.contains('Anirudh H') ?? false){
    print('full Name contains Anirudh H');
  } else{
    print('No Anirudh H in fullName');
  }

  final naam = getFullNameOptional() ?? getFullName();
  print(naam);


  // extending optional Types
  final someName = getFullNameOptional();
  someName.describe();
*/

  // unwrapping multiple optionals

  print(getFullName(null, null));
  print(getFullName('Anirudh', 'R H'));
  print(getFullName('Anirudh', null));


}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print("This is Null");
    } else {
      print('This isnt null');
    }
  }
}

T? withAll<T>(
  List<T?> optionals,
  T? Function(List<T>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());

String getFullName(String? firstName, String? lastName) =>
    withAll([firstName, lastName], (names) => names.join(' ')) ?? 'Empty';
