// Q9. Check if the number is even or odd,
//   If number is even then check if this is divisible by 5 or not
//   & if number is odd then check if this is divisible by 7 or not.

void main() {
  int number = 10;

  if (number % 2 == 0) {
    print("The number is even");
    number % 5 == 0
        ? print("Its also divisible by 5")
        : print("Its not divisible by 5");
  } else if (number % 2 != 0) {
    print("The number is odd");
    number % 7 == 0
        ? print("Its also divisible by 7")
        : print("Its not divisible by 7");
  }
}
