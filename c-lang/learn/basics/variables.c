// C is a statically typed language.

// ? This means that any variable has an associated type, and this type is known at compilation time.

// This is very different than how you work with variables in Python, JavaScript, PHP and other interpreted languages.

// ? When you create a variable in C, you have to specify the type of a variable at the declaration.


// In this example we initialize a variable age with type int:

int age;

// A variable name can contain any uppercase or lowercase letter, can contain digits and the underscore character, but it can't start with a  digit. AGE and Age10 are valid variable names, 1age is not.

// You can also initialize a variable at declaration, specifying the initial value:

int age = 37;

// Once you declare a variable, you are then able to use it in your program code.
// ? You can change its value at any time, using the = operator for example, like in age = 100; (provided the new value is of the same type).

// In this case:

#include <stdio.h>

int main(void) {
    int age = 0;
    age = 37.2;
    // will convert the decimal number to an integer value. (%u)
   printf("%u\n", age);


//  The C built-in data types are int, char, short, long, float, double, long double. 

// ? C provides us the following types to define integer values:

//! Integer numbers

// char
// int
// short
// long

// ? Most of the time, you'll likely use an int to store an integer. But in some cases, you might want to choose one of the other 3 options.

// The char type is commonly used to store letters of the ASCII chart, but it can be used to hold small integers from -128 to 127. It takes at least 1 byte.

// int takes at least 2 bytes. short takes at least 2 bytes. long takes at least 4 bytes.

// ! Unsigned integers

// For all the above data types, we can prepend unsigned to start the range at 0, instead of a negative number. This might make sense in many cases.

// unsigned char will range from 0 to at least 255
// unsigned int will range from 0 to at least 65,535
// unsigned short will range from 0 to at least 65,535
// unsigned long will range from 0 to at least 4,294,967,295

// ? If you have an unsigned int number at 255, and you increment it, you'll get 256 in return. 
// As expected. If you have an unsigned char number at 255, and you increment it, you'll get 0 in return.
// It resets starting from the initial possible value.

// ! The problem with overflow
// Given all those limits, a question might come up: how can we make sure our numbers do not exceed the limit?
// And what happens if we do exceed the limit?

// If you have a unsigned char number at 255 and you add 10 to it, you'll get the number 9:

unsigned char j = 255;
  j = j + 10;
 printf("%u\n", j); /* 9 */



// If you don't have a signed value, the behavior is undefined.
// It will basically give you a huge number which can vary, like in this case:

//! Throws err
// char j = 127;
//   j = j + 10;
//   printf("%u", j); /* 4294967177 */

// In other words, C does not protect you from going over the limits of a type. 
// You need to take care of this yourself.

//! Floating point numbers

// Floating point types can represent a much larger set of values than integers can, and can also represent fractions, something that integers can't do.

// ? Using floating point numbers, we represent numbers as decimal numbers times powers of 10.

// You might see floating point numbers written as

// 1.29e-3
// -2.3e+5

// The following types:

// float
// double
// long double
// are used to represent numbers with decimal points (floating point types). All can represent both positive and negative numbers.

// ? The minimum requirements for any C implementation is that float can represent a range between 10^-37 and 10^+37, and is typically implemented using 32 bits. 
// ? double can represent a bigger set of numbers. long double can hold even more numbers.

// The exact figures, as with integer values, depend on the implementation.

// On a modern Mac, a float is represented in 32 bits, and has a precision of 24 significant bits. 8 bits are used to encode the exponent.

// A double number is represented in 64 bits, with a precision of 53 significant bits. 11 bits are used to encode the exponent.

// The type long double is represented in 80 bits, has a precision of 64 significant bits. 15 bits are used to encode the exponent.


// ? On your specific computer, how can you determine the specific size of the types? You can write a program to do that:

 printf("char size: %lu bytes\n", sizeof(char));
  printf("int size: %lu bytes\n", sizeof(int));
  printf("short size: %lu bytes\n", sizeof(short));
  printf("long size: %lu bytes\n", sizeof(long));
  printf("float size: %lu bytes\n", sizeof(float));
  printf("double size: %lu bytes\n", 
    sizeof(double));
  printf("long double size: %lu bytes\n", 
    sizeof(long double));
  }