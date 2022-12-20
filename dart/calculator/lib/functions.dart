int addNumbers(int a, int b) {
  return a + b;
}

int subtractNumbers(int a, int b) {
  return a - b;
}

int multiplyNumbers(int a, int b) {
  return a * b;
}

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
