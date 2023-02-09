// Clears the console screen
fn clear_screen() {
    // Clears the console screen
    print!("{}[2J", 27 as char);
}

// Prints a welcome message to the console
fn welcome_message() {
    // Create a welcome message string that is printed to the console
    let welcome_message = "Welcome to the rust console calculator!\n\nTo use this calculator, please enter two numbers and an operation.\nTo exit the calculator, press Ctrl + C\n\nCreated by: https://github.com/ThatGuyJamal\n\n";
    
    println!("{}", welcome_message);
}

fn add(a: f32, b: f32) -> f32 {
    a + b
}

fn subtract(a: f32, b: f32) -> f32 {
    a - b
}

fn multiply(a: f32, b: f32) -> f32 {
    a * b
}

fn divide(a: f32, b: f32) -> f32 {
    a / b
}

fn convert_to_f32(string: String) -> f32 {
    // We need to trim the string to remove the whitespace from the input
    // This is because the parse function will fail if there is whitespace (aka not a valid i32)
    match string.trim().parse::<f32>() {
        Ok(num) => num,
        // If the string cannot be parsed to an i32, the program will panic
        Err(err) => panic!("The string could not be parsed to an i32: {err}"),
    }
}

fn read_console_input() -> String {
    // Gets the input from the console
    let mut input = String::new();

    // Reads the input from the console
    std::io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line");

    return input;
}

/**
 * This is a simple calculator written in rust
 * It takes two numbers and an operation as input
 * It then performs the operation on the two numbers
 * It then prints the result to the console
 * 
 * @author: https://github.com/ThatGuyJamal
 * @created at: 02/9/2023
 * @last modified: 02/9/2023
 * @version: 0.1.0
 * @license: MIT
 */
fn main() {
    clear_screen();
    welcome_message();
    
    println!("Please enter the first number:");

    // Gets the first argument from the console input
    let fist_number_string = read_console_input();

    // Converts the string to an i32
    let converted_first_number = convert_to_f32(fist_number_string);

    println!("Please enter the second number:");

    // Gets the second argument from the console input
    let second_number_string = read_console_input();

    // Converts the string to an i32
    let converted_second_number = convert_to_f32(second_number_string);

    // Operations that can be used in the calculator
    let operations = ["+", "-", "*", "/"];

    println!("Please enter the operation you want to perform:");

    for operation in operations.iter() {
        println!("{}", operation);
    }

    // Gets the operation from the console input
    let mut operation = String::new();
    // Reads the input from the console
    // Loops 3 times until the user enters a valid operation
    let mut fail_count = 0;

    loop {
        // If the user enters an invalid operation 3 times, the program will exit
        if fail_count == 3 {
            println!("You have entered an invalid operation 3 times. Exiting...");
            std::process::exit(0);
        }

        // Reads the input from the console
        std::io::stdin()
            .read_line(&mut operation)
            .expect("Failed to read line");

        // Checks if the operation is valid
        if operations.contains(&operation.trim()) {
            break;
        } else {
            println!("Please enter a valid operation");
            // Increments the fail count
            fail_count += 1;
        }
    }

    // Removes the whitespace from the operation
    let operation: &str = operation.trim();

    // Performs the operation
    match operation {
        "+" => println!(
            "The result is: {}",
            add(converted_first_number, converted_second_number)
        ),
        "-" => println!(
            "The result is: {}",
            subtract(converted_first_number, converted_second_number)
        ),
        "*" => println!(
            "The result is: {}",
            multiply(converted_first_number, converted_second_number)
        ),
        "/" => println!(
            "The result is: {}",
            divide(converted_first_number, converted_second_number)
        ),
        _ => println!("Invalid operation"),
    }

    println!("Thank you for using the rust calculator!");
}
