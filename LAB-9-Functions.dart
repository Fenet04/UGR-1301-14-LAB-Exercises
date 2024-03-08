void main() {
  String originalString = "you rock!";
  String reversedString = reverseString(originalString);
  print("Original string: $originalString");
  print("Reversed string: $reversedString");
}

String reverseString(String inputString) {
  String reversed = '';
  for (int i = inputString.length - 1; i >= 0; i--) {
    reversed += inputString[i];
  }
  return reversed;
}


