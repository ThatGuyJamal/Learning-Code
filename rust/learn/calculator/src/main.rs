use std::env;
use std::process;

// Usage: cargo run -- [arg1] [arg2] [arg3]
fn main() {
    // The arguments collected from the command input
    let args: Vec<String> = env::args().collect();

    if !args.len() > 1 {
        println!("No arguments passed to the calculator");
        print_args_error();
        process::exit(0);
    }

    let input_one = &args[1]; // operation
    let input_two = &args[3]; // value 1
    let input_three = &args[2]; // value 2

    // Handles argument operations
    match input_one.as_str() {
        // Handles the addition operations
        "+" => handle_add(input_two, input_three),
        // Handles the substraction operations
        "-" => handle_sub(input_two, input_three),
        // Handles the multiplcation operations
        "*" => handle_mul(input_two, input_three),
        // Handles the division operations
        "/" => handle_div(input_two, input_three),
        _ => {
            println!("Your operation argument was invalid!");
            print_args_error();
        }
    }
}

// Converts a string to a flout 32 int
fn convert_string_to_f32(string: &String) -> f32 {
    match string.parse::<f32>() {
        Ok(num) => num,
        Err(err) => panic!("The string could not be parsed to an i32: {err}"),
    }
}

fn add(x: f32, y: f32) -> f32 {
    x + y
}

fn sub(x: f32, y: f32) -> f32 {
    x - y
}

fn mul(x: f32, y: f32) -> f32 {
    x * y
}

fn div(x: f32, y: f32) -> f32 {
    x / y
}

// Adds two inputs
fn handle_add(number_one: &String, number_two: &String) {
    let sum = add(
        convert_string_to_f32(number_one),
        convert_string_to_f32(number_two),
    );
    println!("The result of the addition: {}", sum)
}

// Substracts two inputs
fn handle_sub(number_one: &String, number_two: &String) {
    let sum = sub(
        convert_string_to_f32(number_one),
        convert_string_to_f32(number_two),
    );
    println!("The result of the substraction is: {}", sum)
}

// Multiples two inputs
fn handle_mul(number_one: &String, number_two: &String) {
    let sum = mul(
        convert_string_to_f32(number_one),
        convert_string_to_f32(number_two),
    );
    println!("The result of the multiplication is: {}", sum)
}

// Divides two inputs
fn handle_div(number_one: &String, number_two: &String) {
    let sum = div(
        convert_string_to_f32(number_one),
        convert_string_to_f32(number_two),
    );
    println!("The result of the division is: {}", sum)
}

fn print_args_error() {
    println!("Exmaple:");
    println!("List of valid operations: +, -, *, /");
    println!("cargo run -- + 6 9 // result = 15")
}
