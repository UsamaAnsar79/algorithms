// Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.

void main() {
  List<int> numbers = [2, 6, 1, 8, 22, 66, 11, 99, 8, 55, 33];

  int max = numbers.reduce((current, next) => current > next ? current : next);
  print(max);
}
