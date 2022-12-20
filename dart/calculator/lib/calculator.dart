import 'dart:io';
import 'dart:convert';

import "package:calculator/functions.dart";

void main() {
// A list of allowed operations that the user can enter
  final validOperationsList = ['+', '-', '*', '/'];

  print("Enter an operation: ");

  // Read the operation from the user
  final operation = stdin.readLineSync(encoding: utf8);

  // Check if the operation is valid
  if (!validOperationsList.contains(operation)) {
    print("Invalid operation. Please use one of the following: +, -, *, /");
    return;
  }

  print("Enter the first number: ");

  // Read the first number from the user
  final firstNumber = int.parse(stdin.readLineSync(encoding: utf8)!);

  print("Enter the second number: ");

  // Read the second number from the user
  final secondNumber = int.parse(stdin.readLineSync(encoding: utf8)!);

  // Call the calculate function from the calculator library
  // and pass in the operation, first number, and second number
  final result = calculate(operation!, firstNumber, secondNumber);

  print("The result is: $result");
}
