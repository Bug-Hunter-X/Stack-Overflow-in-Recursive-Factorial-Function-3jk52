function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}
This code will produce a stack overflow error for large values of x, because the recursive calls to foo will exceed the maximum recursion depth. This is because the function does not have a base case for all possible input values. In this case, the base case should handle values of x less than 0.  Additionally, the function uses an integer type which limits the size of the return value, leading to overflow for large inputs.