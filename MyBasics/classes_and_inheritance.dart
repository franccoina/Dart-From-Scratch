import 'dart:io';

// -------------- Classes and Inheritance --------------

void main() {
  var rect = Rectangle();
  rect.width = 5.0;
  rect.height = 10.0;

  print("------- Welcome to the GeometryGuesser! -------");
  print("");
  print("------- Rectangle Examples -------");
  print("-- Width: ${rect.width}");
  print("-- Height: ${rect.height}");
  print("-- Area: ${rect.area()}");
  print("-- Perimeter: ${rect.perimeter()}");
  print("-- Is Square: ${rect.isSquare()}");

  var square = Square();
  square.side = 7.0;

  print("");
  print("------- Square Examples -------");
  print("-- Side: ${square.side}");
  print("-- Area: ${square.area()}");
  print("-- Perimeter: ${square.perimeter()}");
  print("-- Is Square: ${square.isSquare()}");

  // -------------- My Exercise --------------

  print("------- Now You! -------");
  print("");
  print("-- Please try and make a Rectangle, which is also a Square: ");

  var userTryToSquare = Rectangle();

  double? widthInput;
  print("");
  print("-- Please enter a width: ");
  while (true) {
    var input = stdin.readLineSync();
    if (input != null) {
      widthInput = double.tryParse(input);
    }
    if (widthInput != null && widthInput > 0) break;
    print("-- Invalid width. Please enter a positive number.");
  }
  userTryToSquare.width = widthInput!;

  double? heightInput;
  print("-- Please enter a height: ");
  while (true) {
    var input = stdin.readLineSync();
    if (input != null) {
      heightInput = double.tryParse(input);
    }
    if (heightInput != null && heightInput > 0) break;
    print("-- Invalid height. Please enter a positive number.");
  }
  userTryToSquare.height = heightInput!;

  while (!userTryToSquare.isSquare()) {
    print("");
    print("-- The rectangle is not a square. Let's fix it by changing only the height.");

    print("");
    print("-- Please enter a new height. Remember your width is ${userTryToSquare.width}: ");

    while (true) {
      var input = stdin.readLineSync();
      if (input != null) {
        heightInput = double.tryParse(input);
      }
      if (heightInput != null && heightInput > 0) break;
      print("");
      print("-- Invalid height. Please enter a positive number.");
    }
    userTryToSquare.height = heightInput!;
  }

  print("");
  print("------- Well Done! Here are your values -------");
  print("-- Width: ${userTryToSquare.width}");
  print("-- Height: ${userTryToSquare.height}");
  print("-- Area: ${userTryToSquare.area()}");
  print("-- Perimeter: ${userTryToSquare.perimeter()}");
  print("-- Is Square: ${userTryToSquare.isSquare()}");
}

// ---------------------------------------------------------------

class Rectangle {
  double width = 0.0;
  double height = 0.0;

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2.0 * (width + height);
  }

  bool isSquare() {
    return width == height;
  }
}

class Square extends Rectangle {
  double get side => width;
  set side(double value) {
    width = value;
    height = value;
  }
}
