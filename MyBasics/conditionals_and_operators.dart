import 'dart:io';
import 'dart:math';

void main() {
  // -------------- Conditionals --------------

  stdout.write("-- Please enter a number: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num > 0) {
    print("The number $num is positive.");
  } else if (num < 0) {
    print("The number $num is negative.");
  } else {
    print("The number is zero.");
  }

  // -------------- Operators --------------

  const String Indeterminado = "Indeterminado";
  stdout.write("-- Please enter the first number: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("-- Please enter the second number: ");
  double b = double.parse(stdin.readLineSync()!);

  print("-- Sum: $a + $b = ${a + b}");
  print("-- Subtraction: $a - $b = ${a - b}");
  print("-- Multiplication: $a * $b = ${a * b}");
  print("-- Division: $a / $b = ${b != 0 ? a / b : Indeterminado}");
  print("-- Modulus: $a % $b = ${b != 0 ? a % b : Indeterminado}");
  print("-- Exponentiation: $a ^ $b = ${pow(a, b)}");
  print("");
}
