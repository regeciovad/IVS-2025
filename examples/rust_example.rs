// Rust example
// rustc -o rust_example rust_example.rs
// ./rust_example

fn main() {
    let mut values = vec![1, 2, 3, 4];

    for value in &values {
        println!("value = {}", value);
    }

    while let Some(value) = values.pop() {
        println!("value = {value}");
    }
}
