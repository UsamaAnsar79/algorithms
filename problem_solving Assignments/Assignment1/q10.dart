//   Q10: Write a program that takes three numbers from the user
//   and prints the greatest number & lowest number.

void main() {
  List<int> numbers = [5, 1, 7];
  int max = numbers[0];
  int min = numbers[0];

  for (int i = 0; i < numbers.length; i++) {
    if (max > numbers[i]) {
      max = numbers[i];
    } else {
      min = numbers[i];
    }
  }

  print("Greatest Number: $max");
  print("Lowest Number: $min");
}
