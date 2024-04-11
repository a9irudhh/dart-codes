import 'dart:io';

void main(List<String> args) {
  //#allows to change the flow of the application
  final num = 9;
  if (num < 10) {
    print('num is less than 10');
  } else {
    print('num is not less than 10');
  }

  print('----------------------------------');
  const names = ['anirudh', 'harish', 'pavan', 'sameer', 'satwik'];
  // iterator
  for (var element in names) {
    print(element);
  }

  print('----------------------------------');
  //classic for loop
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

  print('----------------------------------');
  for (var item in Iterable.generate(20)) {
    (item % 2 == 0)
        ? print("${item} is divisible by 2")
        : print("${item} is not divisible by 2");
  }

  print('----------------------------------');
  //while and do while loops
  var i = 0;
  while (i < names.length) {
    print(names[i++]);
  }

  print('----------------------------------');
  i = 0;
  do {
    print(names[i++]);
  } while (i < names.length);



  // code to check the class to which the user entered age belongs to
  while (true) {
    stdout.write('Enter your Age or type "exit": ');
    final input = stdin.readLineSync();
    if (input == 'exit') {
      stdout.write('Thanks for using this application');
      break;
    } else if ((input?.length ?? 0) == 0) {
      stdout.writeln('Please enter a valid age');
      continue;
    }

    final finalAge = int.parse(input!);
    if(finalAge < 0){
      stdout.write('Age cannot be negative.');
      continue;
    }

    switch (finalAge) {
      case (<= 10):
        stdout.write('You are still a child\n');
        break;
      case (<= 20):
        stdout.write('You are still young\n');
        break;
      case (<= 30):
        stdout.write('You are adult\n');
        break;
      case (<= 60):
        stdout.write('You are old now\n');
        break;
      default:
        stdout.write('Goated person fr\n');
        break;
    }
  }


  // code to appreciate my name
  while (true) {
    stdout.writeln('Please Enter name or "exit": ');
    final input = stdin.readLineSync();
    if(input == 'exit'){
      stdout.writeln('Thanks for using this application');
      break;
    } else if ((input?.length ?? 0) == 0) {
      stdout.writeln('Please enter a valid Name');
      continue;
    }

    switch(input){
      case 'Anirudh':
        stdout.writeln('Hey $input, you got a nice name');
        break;
      default:
        stdout.writeln('Hey $input, your name is mid');
        break;
    }
  }
}
