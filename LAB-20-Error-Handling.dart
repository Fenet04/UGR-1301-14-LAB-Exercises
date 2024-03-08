double divideNumbers(double dividend, double divisor) {
  try {
    if (divisor == 0) {
      throw DivisionByZeroError();
    }
    return dividend / divisor;
  } catch (e) {
    print("Error: Division by zero is not allowed.");
    return double.nan; 
  }
}

void main() {
  double dividend = 10;
  double divisor = 0;

  double result = divideNumbers(dividend, divisor);
  if (!result.isNaN) {
    print("Result: $result");
  }
}
