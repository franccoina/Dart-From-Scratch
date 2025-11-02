import 'dart:io';
import 'dart:math';
import 'package:characters/characters.dart';

// ------- Challenge 1 -------
class Challenge1 {
  static void run() {
    print("------- Challenge 1 -------");
    stdout.write("-- Please enter a number to square: ");
    int? number = int.tryParse(stdin.readLineSync()!.trim());

    while (number == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      number = int.tryParse(stdin.readLineSync()!.trim());
    }

    if (number > 0) {
      double result = pow(number, 2).toDouble();
      print("The number $number is positive. Its square is $result.");
    } else if (number < 0) {
      print("The number $number is negative, so we will not square it.");
    } else {
      print("The number $number is zero, so we will not square it.");
    }
  }
}

// ------- Challenge 2 -------
class Challenge2 {
  static void run() {
    print("------- Challenge 2 -------");
    stdout.write("-- Please enter the first number: ");
    double? firstNumber = double.tryParse(stdin.readLineSync()!.trim());

    while (firstNumber == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      firstNumber = double.tryParse(stdin.readLineSync()!.trim());
    }

    stdout.write("-- Please enter the second number: ");
    double? secondNumber = double.tryParse(stdin.readLineSync()!.trim());

    while (secondNumber == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      secondNumber = double.tryParse(stdin.readLineSync()!.trim());
    }

    double result;

    if (firstNumber >= secondNumber) {
      result = firstNumber * 2;
      print("$firstNumber is equal or greater than $secondNumber, so the result is $result.");
    } else {
      result = secondNumber * 3;
      print("$firstNumber is lower than $secondNumber, so the result is $result.");
    }
  }
}

// ------- Challenge 3 -------
class Challenge3 {
  static void run() {
    print("------- Challenge 3 -------");
    stdout.write("-- Please enter a number to square root or square: ");
    int? number = int.tryParse(stdin.readLineSync()!.trim());

    while (number == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      number = int.tryParse(stdin.readLineSync()!.trim());
    }

    if (number > 0) {
      double result = sqrt(number);
      print("The number $number is positive, so its square root is $result.");
    } else if (number < 0) {
      double result = pow(number, 2).toDouble();
      print("The number $number is negative, so its square is $result.");
    } else {
      print("The number $number is zero, so the result is 0 too.");
    }
  }
}

// ------- Challenge 4 -------
class Challenge4 {
  static void run() {
    print("------- Challenge 4 -------");
    stdout.write("-- Please enter the radius of the circle: ");
    double? radius = double.tryParse(stdin.readLineSync()!.trim());

    while (radius == null) {
      stdout.write("-- The input is not valid. Please enter a valid radius: ");
      radius = double.tryParse(stdin.readLineSync()!.trim());
    }

    double perimeter = 2 * pi * radius;
    print("The perimeter of the circle with radius $radius is $perimeter.");
  }
}

// ------- Challenge 5 -------
class Challenge5 {
  static void run() {
    print("------- Challenge 5 -------");
    stdout.write("-- Please enter a number between 1 and 7, and I will return the corresponding workday: ");
    int? day = int.tryParse(stdin.readLineSync()!.trim());

    while (day == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      day = int.tryParse(stdin.readLineSync()!.trim());
    }

    switch (day) {
      case 1:
        print("Monday");
        break;
      case 2:
        print("Tuesday");
        break;
      case 3:
        print("Wednesday");
        break;
      case 4:
        print("Thursday");
        break;
      case 5:
        print("Friday");
        break;
      case 6:
      case 7:
        print("Number out of the workday range.");
        break;
      default:
        print("The entered parameter is not valid.");
        break;
    }
  }
}

// ------- Challenge 6 -------
class Challenge6 {
  static void run() {
    print("------- Challenge 6 -------");
    stdout.write("-- Please enter your annual salary: ");
    double? salary = double.tryParse(stdin.readLineSync()!.trim());

    while (salary == null) {
      stdout.write("-- The input is not valid. Please enter a valid amount: ");
      salary = double.tryParse(stdin.readLineSync()!.trim());
    }

    if (salary > 12000) {
      double tax = (salary - 12000) * 0.15;
      print("You must pay $tax in taxes.");
    } else {
      print("No taxes due.");
    }
  }
}

// ------- Challenge 7 -------
class Challenge7 {
  static void run() {
    print("------- Challenge 7 -------");
    stdout.write("-- Please enter the first number: ");
    int? num1 = int.tryParse(stdin.readLineSync()!.trim());

    while (num1 == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      num1 = int.tryParse(stdin.readLineSync()!.trim());
    }

    stdout.write("-- Please enter the second number: ");
    int? num2 = int.tryParse(stdin.readLineSync()!.trim());

    while (num2 == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      num2 = int.tryParse(stdin.readLineSync()!.trim());
    }

    int remainder = num1 % num2;
    print("The remainder of $num1 divided by $num2 is $remainder.");
  }
}

// ------- Challenge 8 -------
class Challenge8 {
  static void run() {
    print("------- Challenge 8 -------");
    int sum = 0;
    for (int i = 2; i <= 50; i += 2) {
      sum += i;
    }
    print("Fun fact! The sum of even numbers between 1 and 50 is $sum.");
  }
}

// ------- Challenge 9 -------
class Challenge9 {
  static void run() {
    print("------- Challenge 9 -------");
    stdout.write("-- Please enter a numerator for first fraction: ");
    int? num1 = int.tryParse(stdin.readLineSync()!.trim());
    while (num1 == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      num1 = int.tryParse(stdin.readLineSync()!.trim());
    }

    stdout.write("-- Please enter a denominator for first fraction: ");
    int? den1 = int.tryParse(stdin.readLineSync()!.trim());
    while (den1 == null || den1 == 0) {
      stdout.write("-- The input is not valid. Please enter a valid non-zero number: ");
      den1 = int.tryParse(stdin.readLineSync()!.trim());
    }

    stdout.write("-- Please enter a numerator for second fraction: ");
    int? num2 = int.tryParse(stdin.readLineSync()!.trim());
    while (num2 == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      num2 = int.tryParse(stdin.readLineSync()!.trim());
    }

    stdout.write("-- Please enter a denominator for second fraction: ");
    int? den2 = int.tryParse(stdin.readLineSync()!.trim());
    while (den2 == null || den2 == 0) {
      stdout.write("-- The input is not valid. Please enter a valid non-zero number: ");
      den2 = int.tryParse(stdin.readLineSync()!.trim());
    }

    int commonDen = den1 * den2;
    int diffNum = num1 * den2 - num2 * den1;

    if (diffNum == 0) {
      print("The difference is 0.");
    } else {
      print("The difference is $diffNum/$commonDen.");
    }
  }
}

// ------- Challenge 10 -------
class Challenge10 {
  static void run() {
    print("------- Challenge 10 -------");
    stdout.write("-- Please enter a single word (no spaces): ");
    String? word = stdin.readLineSync();

    while (word == null || word.trim().isEmpty || word.contains(' ')) {
      stdout.write("-- The input is not valid. Please enter a single word (no spaces): ");
      word = stdin.readLineSync();
    }

    print('The length of the word "$word" is ${word.length}.');
  }
}

// ------- Challenge 11 -------
class Challenge11 {
  static void run() {
    print("------- Challenge 11 -------");
    double sum = 0;
    for (int i = 1; i <= 4; i++) {
      stdout.write("-- Please enter the $i° number: ");
      double? number = double.tryParse(stdin.readLineSync()!.trim());
      while (number == null) {
        stdout.write("-- The input is not valid. Please enter a valid number: ");
        number = double.tryParse(stdin.readLineSync()!.trim());
      }
      sum += number;
    }
    double average = sum / 4;
    print("The average of the entered numbers is $average.");
  }
}

// ------- Challenge 12 -------
class Challenge12 {
  static void run() {
    print("------- Challenge 12 -------");
    int smallest = 9223372036854775807; // int.MaxValue
    for (int i = 1; i <= 5; i++) {
      stdout.write("-- Please enter the $i° number: ");
      int? number = int.tryParse(stdin.readLineSync()!.trim());
      while (number == null) {
        stdout.write("-- The input is not valid. Please enter a valid number: ");
        number = int.tryParse(stdin.readLineSync()!.trim());
      }
      if (number < smallest) smallest = number;
    }
    print("The smallest number is $smallest.");
  }
}

// ------- Challenge 13 -------
class Challenge13 {
  static void run() {
    print("------- Challenge 13 -------");
    stdout.write("-- Please enter a single word (no spaces): ");
    String? word = stdin.readLineSync()?.toLowerCase();

    while (word == null || word.trim().isEmpty || word.contains(' ')) {
      stdout.write("-- The input is not valid. Please enter a single word (no spaces): ");
      word = stdin.readLineSync()?.toLowerCase();
    }

    int count = 0;
    for (var c in word.characters) {
      if ('aeiou'.contains(c)) {
        count++;
      }
    }
    print('The word "$word" contains $count vowels.');
  }
}

// ------- Challenge 14 -------
class Challenge14 {
  static void run() {
    print("------- Challenge 14 -------");
    stdout.write("-- Please enter a number: ");
    int? number = int.tryParse(stdin.readLineSync()!.trim());
    while (number == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      number = int.tryParse(stdin.readLineSync()!.trim());
    }

    int factorial = 1;
    for (int i = 1; i <= number; i++) {
      factorial *= i;
    }
    print("The factorial of the number $number is $factorial.");
  }
}

// ------- Challenge 15 -------
class Challenge15 {
  static void run() {
    print("------- Challenge 15 -------");
    stdout.write("-- Please enter a number: ");
    int? number = int.tryParse(stdin.readLineSync()!.trim());
    while (number == null) {
      stdout.write("-- The input is not valid. Please enter a valid number: ");
      number = int.tryParse(stdin.readLineSync()!.trim());
    }

    if (number >= 10 && number <= 20) {
      print("The number is in the range of 10 to 20.");
    } else {
      print("The number is out of range of 10 to 20.");
    }
  }
}
