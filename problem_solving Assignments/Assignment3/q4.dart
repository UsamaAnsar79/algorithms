// Q4. Implement a code that finds the factorial of a number using a while
// loop or for loop.
// Example:
// Input: 5
// Output: Factorial of 5 is 120

void main() {
  int calcFactorial(int number) {
    int calc = 1;

    for (int i = number; i > 0; i--) {
      calc = calc * i;
    }

    return calc;
  }

  int number = 5;
  int factorial = calcFactorial(number);
  print("Factorial of $number is $factorial");
}
