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
}
