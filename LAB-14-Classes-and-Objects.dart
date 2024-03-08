import 'dart:math';

abstract class Shape {

  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle({required this.radius});

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square({required this.side});

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  
  Circle circle = Circle(radius: 5.0);
  Square square = Square(side: 4.0);

  print("Area of Circle with radius ${circle.radius}: ${circle.calculateArea()}");

  print("Area of Square with side ${square.side}: ${square.calculateArea()}");
}
