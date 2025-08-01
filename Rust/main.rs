use std::io::{self, Write};

fn main() {
    print!("What's your name? ");
    io::stdout().flush().unwrap();

    let mut name = String::new();
    io::stdin().read_line(&mut name).unwrap();
    let name = name.trim();

    println!("fuck you {}", name);
}
