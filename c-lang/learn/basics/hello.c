// ? import the stdio library (the name stands for standard input-output library).

// This library gives us access to input/output functions.

#include <stdio.h>

// stdio is the library that provides the printf() function.

// ? This function is wrapped into a main() function. The main() function is the entry point of any C program.


// void means the function does not take any arguments.

int main(void) {
    printf("Hello, World!");
    return 0;
}

// ? To run the program we must first compile it.
// Any Linux or macOS computer already comes with a C compiler built-in. For Windows, you can use the Windows Subsystem for Linux (WSL).