function foo(x: int): int {
  if (x < 0) {
    return 0; // Handle negative input
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}
This improved version adds a base case for negative input values and avoids stack overflow errors. While it still has the limitation of integer overflow for very large inputs, this is a separate concern which requires a different solution (for example, using a different data type). 