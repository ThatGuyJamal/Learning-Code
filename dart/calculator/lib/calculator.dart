import "package:calculator/functions.dart";

void main() {
// A list of allowed operations that the user can enter
  final List<String> validOperationsList = ['+', '-', '*', '/'];

  print("Enter an operation: (Example: ${validOperationsList.join(', ')})");

  // Read the operation from the user
  final String operation = readStringInput();

  // Check if the operation is valid
  if (!validOperationsList.contains(operation)) {
    print(
        "Invalid operation. Please use one of the following: ${validOperationsList.join(', ')}");
    return;
  }

  print("Enter the first number: ");

  // Read the first number from the user
  final int firstNumber = readIntInput();

  print("Enter the second number: ");

  // Read the second number from the user
  final int secondNumber = readIntInput();

  print("The result is: ${calculate(operation, firstNumber, secondNumber)}");
}
