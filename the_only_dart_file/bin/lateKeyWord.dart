//don't use late variables, use optionals instead (you should be just able to use late that's it)
late String name;
// late String name;
void main(List<String> args) {
  try {
    print(name);
  } catch (e) {
    print(e);
  }

  print('Before');
  final person = Person();
  print('After');
  print(person.fullName);
  print(person
      .firstName); // the function is called only once not like everytime you use the variables the function gets called
  print(person.lastName);

  final meow = Cat();
  meow.description = 'Descrption 1';
  print(meow.description);

  final bhow = Dog();
  bhow.description = 'Description 1';

  try {
    //don't use as this is against guidelines. instead use nullable
    bhow.description =
        'Descrption 2'; // due to multiple assignments of the late variable
    print(bhow.description);
  } catch (e) {
    print(e); // therfore error gets printed
  }

  final behroopi = Names();
  print(behroopi.myFullName);

  print("Before");
  late final neko = getFullName();
  print('before 2');
  late final neko2 = neko;
  print('After');
  print('neko value is $neko2');
  print('After 2');



  final johnDoe = familyGuy(idkname: 'John Doe');
  final janeDoe = familyGuy(idkname: 'Jane Doe');

  final doeFamily = Family(members: [johnDoe, janeDoe]);
  print(doeFamily.membersCount);

}

String getFullName() {
  print('Function called');
  return 'Neko chan';
}

class Person {
  late String fullName = _getFullName();
  late String firstName = fullName.split(" ").first;
  late String lastName = fullName.split(" ").last;

  String _getFullName() {
    print('Function Called');
    return 'foo bar';
  }
}

class Cat {
  late String description;
}

class Dog {
  late final String description;
}

class Names {
  String? myFirstName; // avoiding a common pitfall with late variables
  String? myLastName;
  late String? myFullName = "$myFirstName $myLastName";
}

class familyGuy {
  final String idkname;

  familyGuy({required this.idkname});
}

class Family {
  // goal is to tell that late instace variables should't be initialized in the constructors, otherwise they won't be lazy
  /*Incorrect*/
  final Iterable<familyGuy> members;
  late int membersCount;

  Family({required this.members}) {
    membersCount = getCount();
  }

  int getCount() {
    print('Get count called');
    return members.length;
  }
}
