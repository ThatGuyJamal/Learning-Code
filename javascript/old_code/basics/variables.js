// coming from ./strings.js

// we know that you can pass in data from other types in javascript.

/**
 * The three main types of variable declarations in javascript are:
 * ? var
 * ? const
 * ? let
 *
 * These types are always used and each different from one another.
 *
 * var the most dynamic and oldest type among them. It is how you declear and define variables in java and javascript.
 * let is simular to var but it can be used for temporaty data types. Example: If you use let in a function, then its data will not be accessable outside of that function.
 * const is short for constant variable and once decleared cant be changed no matter what. Great to use for consistanty.
 */

// Lets try it!

var apple; // when using var you can declare the variable before even using it. Using const will throw an error.

apple = "0"; // apple is type String

console.log(`Value of apple: ${apple}`);
// to check the type of an data value in js we can use the `typeof()` operator.

apple = 100; // apple has been changed to type number - only works with let and var

console.log(`Apple is type: ${typeof apple}`);

// now using let in a function

// start of the function. You can also do function like this:
/**
 * function test() {
 * }
 *
 * its the same thing - just make sure to call it.
 */
var example = () => {
  let x = "Exmaple using let";
  console.log(x);
};
// If you try and console.log(x) outside of the function / bracket declarations then you will 
// get x of undefined. This is great when you only want to access and use data in one part of your code.

// uncomment this for testing
// console.log(x) output: x is not defined

example(); // running the function

// const 

/**
 * last we will use const.
 * 
 * Below us a simple math function using addition. 
 */

const x = (a, b) => {
    console.log(`Input: ${a} + ${b} = Solution: ${a+b}`)
    return a + b
} 

x(5, 5) // output: Input: 5 + 5 = Solution: 10

// if you try to set x again:

// x = 5
// console.log(x) ERROR: Assignment to constant variable.