// SimpleCalculator.cpp : Defines the entry point for the application.

#include "SimpleCalculator.hpp"

using namespace std;

int main()
{
	cout << "Welcome to the Simple Calculator!" << endl;

	printLineBreak();

	double a, b;
	char op;

	cout << "Enter first number: ";

	cin >> a;

	if(!isValidInput(to_string(a))) {
		cout << "Invalid input passed to calculator!" << endl;
		return 0;
	}

	cout << "Enter second number: ";

	cin >> b;

	if(!isValidInput(to_string(b))) {
		cout << "Invalid input passed to calculator!" << endl;
		return 0;
	}

	cout << "Enter operator (+,-,*,/): ";

	cin >> op;

	switch (op) {
		case '+':
			formatOutput(add(a, b), op);
		break;
		case '-':
			formatOutput(subtract(a, b), op);
		break;
		case '*':
			formatOutput(multiply(a, b), op);
		break;
		case '/':
			formatOutput(divide(a, b), op);
		break;
			default:
				cout << "Invalid operator passed to calculator!";
	}

	return 0;
}

	double add(double a, double b) {
		return a + b;
	}

	double subtract(double a, double b) {
		return a - b;
	}

	double multiply(double a, double b) {
		return a * b;
	}

	double divide(double a, double b) {
		if(b == 0) {
			cout << "Cannot divide by zero!" << endl;
			return 0;
		}

		return a / b;
	}

	void formatOutput(double result, char op) {

		string opName;

		switch (op) {
			case '+':
				opName = "addition";
			break;
			case '-':
				opName = "subtraction";
			break;
			case '*':
				opName = "multiplication";
			break;
			case '/':
				opName = "division";
			break;
		}

		cout << "The result of the " << opName << " is " << result << endl;
	}

	void printLineBreak() {
		cout << "--------------------------------" << endl;
	}

	bool isValidInput(string input) {
		istringstream iss(input);
		double testValue;

		// Try to read a double from the input
		if (iss >> testValue) {
			// Check if there are no extra characters remaining in the input
			return iss.eof();
		}

		return false;
	}