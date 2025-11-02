import 'dart:io';

void main() {
  // -------------- Variable declaration and initialization --------------
  String message = "Hello, World!";
  double number = 1.234;
  bool isTrue = true;
  int count = 5;
  DateTime today = DateTime.now();

  // -------------- Implicitly typed variables --------------
  var variable = "I am a string";
  const String constant = "I am a string... but you can't change me";
  final String changeable = "I am a string... and you may change me";

  print('----- Hola, Bienvenido al calculador de años. -----');
  print('Escribe tu nombre: ');
  String? nameInput = stdin.readLineSync();

  print('Un gusto conocerte, $nameInput');
  print('Por favor, escribe tu fecha de nacimiento en formato dd/MM/yyyy.');
  String? birthdateInput = stdin.readLineSync();

  DateTime? _convertToDateTime(String date) {
    List<String> parts = date.split('/');
    if (parts.length != 3) return null;
    return DateTime.tryParse('${parts[2]}-${parts[1]}-${parts[0]}');
  }

  DateTime? birthdateConverted = _convertToDateTime(birthdateInput!);

  if (birthdateConverted == null) {
    print('La fecha de nacimiento es inválida, nos enviaste: $birthdateInput');
    return;
  }

  var person = Person(
    name: nameInput,
    birthdate: birthdateConverted,
    age: DateTime.now().year - birthdateConverted.year,
  );

  print('Tu nombre es ${person.name}.');
  print('Tu fecha de nacimiento es ${person.birthdate}.');
  print('Tu edad es ${person.age} años.');
}

// ---------------------------------------------------------------

class Person {
  final String? name;
  final DateTime? birthdate;
  final int? age;

  Person({this.name, this.birthdate, this.age});
}
