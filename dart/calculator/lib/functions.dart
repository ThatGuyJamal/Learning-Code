import 'dart:io';
import 'dart:convert';

/// Ads a number to another number
int addNumbers(int a, int b) {
  return a + b;
}

/// Subtracts a number from another number
int subtractNumbers(int a, int b) {
  return a - b;
}

/// Multiplies a number by another number
int multiplyNumbers(int a, int b) {
  return a * b;
}

/// Divides a number by another number
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

/// This function reads a number from the user
num readNumInput() {
  return num.parse(stdin.readLineSync(encoding: utf8)!);
}

/// This function reads an integer from the user
int readIntInput() {
  return int.parse(stdin.readLineSync(encoding: utf8)!);
}

/// This function reads a double from the user
double readDoubleInput() {
  return double.parse(stdin.readLineSync(encoding: utf8)!);
}

// This function reads a string from the user
String readStringInput() {
  return stdin.readLineSync(encoding: utf8)!;
}

/// This function checks if the input is an integer or a double
bool checkInputType(num input) {
  if (input is int) {
    return true;
  } else if (input is double) {
    return false;
  } else {
    return false;
  }
}
