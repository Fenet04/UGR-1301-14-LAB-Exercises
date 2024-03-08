import 'dart:math';

void main() {
  int start = 1;
  int end = 100;

  print("Prime numbers between $start and $end:");

  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}


