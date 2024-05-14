// Q.14: Write a Dart code that takes in a list of integers and
// prints a new list with the elements sorted in ascending order.
// The original list should remain unchanged.

void main() {
  List<int> numbers = [1, 5, 3, 6, 7, 8, 9, 4];

  List<int> ascNumbers = List.of(numbers);
  ascNumbers.sort();

  print("Original List: $numbers");
  print("Ascending List: $ascNumbers");
}
