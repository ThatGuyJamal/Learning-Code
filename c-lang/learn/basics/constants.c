
// ! Constants

// A constant is declared similarly to variables, except it is prepended with the const keyword, and you always need to specify a value.

// Like this:

const int age = 37;

// A constant name follows the same rules for variable names: can contain any uppercase or lowercase letter, can contain digits and the underscore character, but it can't start with a digit. 
// AGE and Age10 are valid variable names, 1AGE is not.

// ? Another way to define constants is by using this syntax:

#define AGE 37

// In this case, you don't need to add a type, and you don't also need the = equal sign, and you omit the semicolon at the end.
// ? The C compiler will infer the type from the value specified, at compile time.
