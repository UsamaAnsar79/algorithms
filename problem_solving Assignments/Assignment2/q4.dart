// Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

void main() {
  List<int> numbers = [2, 6, 1, 8, 4, 9, 1, 5, 4, 7, 5];

  int min = numbers[0];
  int max = numbers[0];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  print("Found Minimum: $min");
  print("Found Maximum: $max");
}
