// Ads a number to another number
int addNumbers(int a, int b) {
  return a + b;
}

// Subtracts a number from another number
int subtractNumbers(int a, int b) {
  return a - b;
}

// Multiplies a number by another number
int multiplyNumbers(int a, int b) {
  return a * b;
}

// Divides a number by another number
double divideNumbers(int a, int b) {
  return a / b;
}

/// This function takes in an operation and two numbers and returns the result
num calculate(String operation, int a, int b) {
  switch (operation) {
    case '+':
      return addNumbers(a, b);
    case '-':
      return subtractNumbers(a, b);
    case '*':
      return multiplyNumbers(a, b);
    case '/':
      return divideNumbers(a, b);
    default:
      return 0;
  }
}
