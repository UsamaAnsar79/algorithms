// Q5 Write a program that calculates the sum of all the digits in a given
// number using a while loop.
// Example:
// Input: 12345
// Output: Sum of digits: 15

void main() {
  sumOfAllDigits(String number) {
    int sum = 0;

    for (String i in number.split('')) {
      int eachNumber = int.parse(i);
      sum += eachNumber;
    }

    return sum;
  }

  String numbers = "12345";
  int sum = sumOfAllDigits(numbers);

  print("Sum of '$numbers' is $sum");
}
