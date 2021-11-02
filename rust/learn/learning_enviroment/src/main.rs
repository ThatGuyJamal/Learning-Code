mod custom_files;

fn main() {
    let result = custom_files::serve_file();

    println!("{}", result);
}
