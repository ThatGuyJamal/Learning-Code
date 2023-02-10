mod algorithms {
    pub fn add(x: f32, y: f32) -> f32 {
        x + y
    }

    pub fn sub(x: f32, y: f32) -> f32 {
        x - y
    }

    pub fn mul(x: f32, y: f32) -> f32 {
        x * y
    }

    pub fn div(x: f32, y: f32) -> f32 {
        x / y
    }
}

pub mod utilities {
    pub fn print_args_error() {
        println!("Example:");
        println!("List of valid operations: +, -, *, /");
        println!("cargo run -- + 6 9 // result = 15")
    }

    // Converts a string to a flout 32 int
    pub fn convert_string_to_f32(string: &String) -> f32 {
        match string.parse::<f32>() {
            Ok(num) => num,
            Err(err) => panic!("{}", err),
        }
    }
}

pub mod functions {
    use super::{
        algorithms::{add, div, mul, sub},
        utilities::convert_string_to_f32,
    };

    // Adds two inputs
    pub fn handle_add(number_one: &String, number_two: &String) {
        let sum = add(
            convert_string_to_f32(number_one),
            convert_string_to_f32(number_two),
        );
        println!("The result of the addition: {}", sum)
    }

    // Subtracts two inputs
    pub fn handle_sub(number_one: &String, number_two: &String) {
        let sum = sub(
            convert_string_to_f32(number_one),
            convert_string_to_f32(number_two),
        );
        println!("The result of the subtraction is: {}", sum)
    }

    // Multiples two inputs
    pub fn handle_mul(number_one: &String, number_two: &String) {
        let sum = mul(
            convert_string_to_f32(number_one),
            convert_string_to_f32(number_two),
        );
        println!("The result of the multiplication is: {}", sum)
    }

    // Divides two inputs
    pub fn handle_div(number_one: &String, number_two: &String) {
        let sum = div(
            convert_string_to_f32(number_one),
            convert_string_to_f32(number_two),
        );
        println!("The result of the division is: {}", sum)
    }
}
