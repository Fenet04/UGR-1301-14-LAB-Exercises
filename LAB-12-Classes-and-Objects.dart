class Rectangle {
  double width;
  double height;

  Rectangle({required this.width, required this.height});

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
 
  Rectangle rectangle = Rectangle(width: 5.0, height: 3.0);

  print("Rectangle with width ${rectangle.width} and height ${rectangle.height}:");
  print("Area: ${rectangle.calculateArea()}");
  print("Perimeter: ${rectangle.calculatePerimeter()}");
}
