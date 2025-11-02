import 'dart:io';
import 'Menu/menu.dart';
import 'Challenges/challenges.dart';

void main(List<String> args) {
  print("Please enter your name: ");
  String? name = stdin.readLineSync();
  print("Hello, $name! Please choose one of the exercises from the menu:\n");
  Menu.show();

  while (true) {
    stdout.write(
        "$name, Please enter the number of the exercise you want to run (or 'exit (e)' to quit): ");
    String? input = stdin.readLineSync()?.trim().toLowerCase();

    if (input == 'exit' || input == 'e') {
      break;
    }

    int? selectedExercise = int.tryParse(input ?? '');

    if (selectedExercise != null && selectedExercise >= 1 && selectedExercise <= 15) {
      // Lógica para ejecutar el ejercicio seleccionado con switch
      switch (selectedExercise) {
        case 1:
          Challenge1.run();
          break;
        case 2:
          Challenge2.run();
          break;
        case 3:
          Challenge3.run();
          break;
        case 4:
          Challenge4.run();
          break;
        case 5:
          Challenge5.run();
          break;
        case 6:
          Challenge6.run();
          break;
        case 7:
          Challenge7.run();
          break;
        case 8:
          Challenge8.run();
          break;
        case 9:
          Challenge9.run();
          break;
        case 10:
          Challenge10.run();
          break;
        case 11:
          Challenge11.run();
          break;
        case 12:
          Challenge12.run();
          break;
        case 13:
          Challenge13.run();
          break;
        case 14:
          Challenge14.run();
          break;
        case 15:
          Challenge15.run();
          break;
        default:
          print("Invalid exercise number. Please try again.");
          break;
      }

      print("Press any key to continue...");
      stdin.readLineSync();
      print("\x1B[2J\x1B[0;0H"); // Limpia la consola
      Menu.show(); // Mostramos el menú nuevamente después de ejecutar el ejercicio
    } else {
      print("Invalid input. Please enter a valid exercise number between 1 to 15 or 'exit (e)' to quit.");
    }
  }
  print("Thank you for using the program. Goodbye!");
}
