void main(List<String> args) {
  
}

class Person{
  final String name;
  final List<Person>? _siblings;

  Person({
    required this.name,
    List <Person>? siblings,
  }) : _siblings = siblings;
}