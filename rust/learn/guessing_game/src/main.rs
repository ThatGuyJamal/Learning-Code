// lib for taking input and other things from user in console.
use std::io;
// lib for using random number gen
use rand::Rng;
// Lib: An Ordering is the result of a comparison between two values.
use std::cmp::Ordering;
// lib for coloring in the console
use colored::*;

fn main() {
    println!("Guess the number!");

    // using the rand lib to get random number 1-101
    let secret_number = rand::thread_rng().gen_range(1, 101);

    println!("The secret number is: {} ", secret_number);

    // loop so the user can keep guessing if incorrect!
    loop {
        println!("Please input your guess!");

        // The mut jey word allows a variable to be mutable.
        let mut guess: String = String::new();

        // using the lib
        io::stdin()
            .read_line(&mut guess) // reading the line and assigning input to var guess
            .expect("I failed to read your answer!"); // catching the error

        println!("You guessed: {} ", guess); // after input is taken in, we output the user guess!

        // converting guess from a number to a strings
        let guess: u32 = match guess.trim().parse() {
            // this line allows us to use the guess.cpm line below
            Ok(num) => num, // checks if guess input was a number
            Err(_) => continue, // if the input was not type number, continue program
        };

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("{}", "Guess higher!".red()), // if users guess is to low, restart the loop!
            Ordering::Greater => println!("{}", "Guess lower!".red()), // if users guess is to high, restart the loop!
            Ordering::Equal => {
                // If the user gets the answer correct, break the loop!
                println!("{}", "You guessed correct!".green());
                break; // ends the loop!
            }
        }
    }
}
