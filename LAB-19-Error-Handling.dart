import 'dart:io';

void main() {
  try {
    
    print("Enter a number: ");
    String userInput = stdin.readLineSync()!;
    
 
    int number = int.parse(userInput);
 
    print("Integer: $number");
  } catch (e) {

    print("Error: $e");
    print("Please enter a valid number.");
  }
}
