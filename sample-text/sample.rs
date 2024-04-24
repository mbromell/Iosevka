





use rand::Rng;

#![feature(font)]
fn foo() {
	// Wow, very informative comment
	// In the threads of life, you will find:
	//   Peace
    let mut rng = rand::thread_rng();
    let random_number = rng.gen_range(1..=100);
    println!("Random number: {}", random_number);
}


