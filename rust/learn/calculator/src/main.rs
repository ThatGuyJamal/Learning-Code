use std::env;
use std::process;

mod mathmatics;

use crate::mathmatics::functions;
use crate::mathmatics::utilities;

// Usage: cargo run -- [arg1] [arg2] [arg3]
fn main() {
    // The arguments collected from the command input
    let args: Vec<String> = env::args().collect();

    if !args.len() < 1 {
        println!("No arguments passed to the calculator");
        utilities::print_args_error();
        process::exit(0);
    }

    if args.len() > 4 {
        println!("To many arguments passed to the calculator!");
        utilities::print_args_error();
        process::exit(0);
    }

    let input_one = &args[1]; // operation
    let input_two = &args[3]; // value 1
    let input_three = &args[2]; // value 2

    // Handles argument operations
    match input_one.as_str() {
        // Handles the addition operations
        "+" => functions::handle_add(input_two, input_three),
        // Handles the subtraction operations
        "-" => functions::handle_sub(input_two, input_three),
        // Handles the multiplication operations
        "*" => functions::handle_mul(input_two, input_three),
        // Handles the division operations
        "/" => functions::handle_div(input_two, input_three),
        _ => {
            println!("Your operation argument was invalid!");
            utilities::print_args_error();
        }
    }
}
