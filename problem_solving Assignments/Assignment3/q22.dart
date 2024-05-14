// Q22. Write a program that calculates the sum of the squares of all odd
// numbers in a given list using a for loop and if-else condition.

void main() {
  List<int> numberList = [1, 2, 3, 4, 5, 6];

  int sumOfSquareOdd = 0;

  int square(int number) {
    return number * number;
  }

  for (int i = 0; i < numberList.length; i++) {
    if (numberList[i] % 2 == 0) {
      print(numberList[i]);
    } else {
      print(numberList[i]);
      sumOfSquareOdd += square(numberList[i]);
    }
  }

  print("Sum of square of all odd numbers: $sumOfSquareOdd");
}
