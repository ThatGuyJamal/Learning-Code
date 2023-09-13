// SimpleCalculator.h : Include file for standard system include files,
// or project specific include files.

#pragma once

#include <iostream>
#include <string>
#include <sstream>

double add(double a, double b);

double subtract(double a, double b);

double multiply(double a, double b);

double divide(double a, double b);

void formatOutput(double result, char op);

void printLineBreak();

bool isDouble(std::string input);