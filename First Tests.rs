///////////////////////////////////////////////////////////////////////////////////////////////
// UTILITY FUNCTIONS

fn add(a: u32, b: u32) -> u32 {
  return a + b;
}

fn subtract(a: u32, b: u32) -> u32 {
  return a - b;
}

fn multiply(a: u32, b: u32) -> u32 {
  return a * b;
}

fn divide(a: u32, b: u32) -> u32 {
  return a / b;
}

fn sqrt_u32(a: u32) -> f64 {
  let a = a as f64;
  return a.powf(0.5);
}

fn sqrt_f64(a: f64) -> f64 {
  return a.powf(0.5);
}

///////////////////////////////////////////////////////////////////////////////////////////////
// MAIN

fn main() {
  let a = 20;
  let b = 10;
  
  let results = (add(a, b), subtract(a, b), multiply(a, b), divide(a, b), sqrt_u32(a), sqrt_f64(9.0));
  
  print!("ADDED: {0}, SUBTRACTED: {1}, MULTIPLIED: {2}, DIVIDED: {3}, SQRT_u32: {4}, SQRT_f64: {5}", results.0, results.1, results.2, results.3, results.4, results.5);
}