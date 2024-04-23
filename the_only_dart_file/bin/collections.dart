import 'package:collection/collection.dart';
void main(List<String> args) {
  //Lists (array)
  const names = ['Foo', 'Bar', 'Andrew', 'tate', 'Billy'];
  for (final element in names) {
    print(element);
  }

  // printing in reverse order
  for (final name in names.reversed) {
    print(name);
  }

  // searches in the entire list
  if (names.contains('Andrew')) {
    print('Yes, list contains Andrew\n');
  }

  // here .where gives a iterable of strings which contains names starting with 'B'
  for (final name in names.where((String name) => name.startsWith('B'))) {
    print(name);
  }

  final ages = [10, 20, 30];
  ages.add(40);
  ages.add(50);

  ages.forEach(print);

  names.map((str) => str.toUpperCase()).forEach(print);

  final numbers = [1, 2, 3, 4, 5];
  final sum = numbers.fold(
      0,
      (
        int initialVal,
        int finalVal,
      ) =>
          initialVal + finalVal);
  print('Sum is $sum');

  final nameList = names.fold(
    "",
    (
      result,
      str,
    ) =>
        '$result ${str.toUpperCase()}',
  );

  print(nameList);

  // sets
  final setOfNames = {
    'Anirudh',
    'Harish',
    'Bhakta'
  }; // use curly braces to declare a set
  print(setOfNames);

  final Names = ['Anirudh', 'Harish', 'Bhakta', 'Anirudh', 'Sameer', 'Satwik'];
  final uniqueNames = {...Names}; // '...variable' is called spread operator
  // - it basically takes individual element from the Names list and adds it to the set
  print(uniqueNames);

  // sets really dont work likle this for example to check equality of two sets
  // we cant write set1 == set2, instead use the setEquality class from collection package
  final set1 = {10, 20, 30};
  final set2 = {20, 30, 10};

  if (SetEquality().equals(set1, set2)) {
    print(
        'Both the sets are equal'); // irrespective of the order in which they are written
  } else {
    print('No the sets are different');
  }

  final person1 = Person(name: 'Anirudh', age: 20);
  final person2 = Person(name: 'Anirudh', age: 20);

  final persons = {
    person2,
    person1
  }; // prints only one Anirudh, 20 as hashcode function is overridden
  print(persons);

  final dog1 = Dog(name: 'Tommy', age: 8);
  final dog2 = Dog(name: 'Tommy', age: 8);

  final dogs = {dog1, dog2};
  print(dogs);

  final personAndDog = {person1, dog1};
  print(personAndDog);

  // maps(dictionaries)
  final info = {
    'name': 'foo',
    'age': 10,
  };

  print(info);
  print(info['name']);
  print(info['age']);

  print('${info.keys}, ${info.values}');

  info.putIfAbsent(
    'height',
    () => 180,
  );

  info.putIfAbsent(
    'height',
    () => 190, // this is not printed as height key is already present
  );
  print(info);
  info['height'] = 190;

  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }

  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print('Height not found');
  }

  // iterables (understand the difference bw this and lists)
  final iterables =
      Iterable.generate(20, (i) => getname(i)); // they are lazily generated

  for (final names in iterables.take(2)) {
    print(names);
  }

  final namesList = ['Anirudh', 'Tarun', 'Harish', 'Sameer'];
  final nameMapped = namesList.map((name) {
    print('Map function called');
    return name.toUpperCase();
  });

  for (final name in nameMapped.take(3)) {
    // so it calls the function only 3 times (acting smart enough)
    print(name);
  }

  // read only version of the lists(immutable) and maps from the above namesList and maps
  final readOnlyList = UnmodifiableListView(namesList);
  try {
    readOnlyList.add('Jake'); // this will throw a error
  } catch (e) {
    print(e);
  }

  final info2 = UnmodifiableMapView(info);

  try{
    info2.addAll({
      'phone' : '123-456-789',
    });
  } catch (e){
    print(e);
  }

}

String getname(int i) {
  print('Function called');
  return 'John #$i';
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
