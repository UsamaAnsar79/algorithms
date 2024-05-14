// Q3. Implement a code that checks whether a given number is prime or not.
// Example:
// Input: 17
// Output: 17 is a prime number.

void main() {
  void checkPrime(int number) {
    if (number <= 0) {
      print("Not Prime");
    } else if (number > 0 && number <= 2) {
      print("Prime");
    } else if (number % 2 == 0) {
      print("Not Prime");
    } else {
      print(" Prime");
    }
  }

  checkPrime(3);
}
