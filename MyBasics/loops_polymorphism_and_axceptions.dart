import 'dart:io';
import 'dart:math';

// -------------- Loops, Polymorphism, and Exceptions --------------
void main() {
  var circle = Circle();
  circle.radius = 7.0;

  // var resultArea = circle.area(circle.radius);
  // var resultPerimeter = circle.perimeter(circle.radius);

  var resultArea = circle.area();
  var resultPerimeter = circle.perimeter();

  print("");
  print("------- Circle Examples -------");
  print("-- Radius: ${circle.radius}");
  print("-- Area: $resultArea");
  print("-- Perimeter: $resultPerimeter");
  print(
    "-- Wanna add 10 to your Radius? Now this is the value: ${circle.add10()}",
  );

  int prev = 0, next = 1, sum;
  for (int i = 0; i < 10; i++) {
    print(prev);
    sum = prev + next;
    prev = next;
    next = sum;
  }

  try {
    print("Number to divide: ");
    int number = int.parse(stdin.readLineSync()!);
    print("Divisor: ");
    int divisor = int.parse(stdin.readLineSync()!);
    if (divisor == 0) {
      throw UnsupportedError("Divisor cannot be zero.");
    }

    print("Result: ${number ~/ divisor}");
  } on UnsupportedError catch (e) {
    print("Error: ${e.message}");
  } catch (ex) {
    print("An unexpected error occurred: $ex");
  }
}

// ---------------------------------------------------------------

abstract class IShape {
  double area();
  double perimeter();
}

abstract class IExtraCalculations {
  double add10();
}

class Circle implements IShape, IExtraCalculations {
  double radius = 0.0;

  @override
  double area() {
    return pi * radius * radius;
  }

  @override
  double perimeter() {
    return 2.0 * pi * radius;
  }

  @override
  double add10() {
    return radius + 10;
  }
}

// ---------------------------------------------------------------

  // class Shape
  // {
  //     public double Area(double Radius) => Math.PI * Radius * Radius;
  //     public double Perimeter(double Radius) => 2.0 * Math.PI * Radius;
  // }

  // class Circle : Shape
  // {
  //     public double Radius { get; set; }
  // }

  // ---------------------------------------------------------------

  // class Shape
  // {
  //     public abstract double Area();
  //     public abstract double Perimeter();
  // }
