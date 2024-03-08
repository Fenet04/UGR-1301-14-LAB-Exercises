import 'dart:io';

void main() {
  
  print("Enter the operation (+, -, *, /): ");
  String operation = stdin.readLineSync()!;

  print("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double result = 0;


  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Division by zero!");
        return;
      }
      break;
    default:
      print("Invalid operation entered!");
      return;
  }


  print("Result: $result");
}
