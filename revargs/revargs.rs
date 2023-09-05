use std::env;

fn main() {
    for arg in env::args().skip(1).rev() {
        print!("{} ", arg)
    }
    if env::args().len() > 1 {
        println!("")
    }
}
