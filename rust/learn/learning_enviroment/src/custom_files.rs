pub fn serve_file() -> String {
    return translate_file();
}

fn load_file() {
    println!("File loaded");
}

fn close_file() {
    println!("File closed");
}

fn translate_file() -> String {
    load_file();
    println!("Translating...");
    close_file();

    return String::from("\nThis is the translation");
}
