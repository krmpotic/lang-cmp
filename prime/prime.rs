const N: i32 = 101;

fn is_prime(n: i32) -> bool {
    let r = (n as f64).sqrt() as i32;
    for i in 2..r + 1 {
        if n % i == 0 {
            return false;
        }
    }
    true
}

fn main() {
    for i in 2..N {
        if is_prime(i) {
            print!("{} ", i);
        }
    }
    println!()
}
