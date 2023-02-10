use std::env;

// Usage: cargo run -- [arg1] [arg2] [arg3]
// arg1 = operation
// arg2 = value 1
// arg3 = value 2

fn main() {
    let args: Vec<String> = env::args().collect();

    let input_one = &args[1];
    let input_two = &args[3];
    let input_three = &args[2];

    match input_one.as_str() {
        "+" => println!(
            "The result is: {}",
            add(
                convert_string_to_f32(input_two),
                convert_string_to_f32(input_three),
            )
        ),
        "-" => println!(
            "The result is: {}",
            sub(
                convert_string_to_f32(input_two),
                convert_string_to_f32(input_three),
            )
        ),
        "*" => println!(
            "The result is: {}",
            mul(
                convert_string_to_f32(input_two),
                convert_string_to_f32(input_three),
            )
        ),
        "/" => println!(
            "The result is: {}",
            div(
                convert_string_to_f32(input_two),
                convert_string_to_f32(input_three),
            )
        ),
        _ => {
            println!("Your operation argument was invalid!");
            println!("List of valid operations: +, -, *, /");
            println!("Exmaple:");
            println!("cargo run -- + 6 9 // result = 15")
        }
    }
}

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
