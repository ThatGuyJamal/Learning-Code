use std::io;

fn main() {
    println!("What is your name?");

    let mut name = String::new();

    let greeting: &str = "Hello, ";

    io::stdin()
        .read_line(&mut name)
        .expect("Failed to read line");

    println!("{}{}", greeting, name)
}
