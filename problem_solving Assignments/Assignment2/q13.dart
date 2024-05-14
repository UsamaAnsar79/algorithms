// Q.13: Implement a code that takes in a list of integers and
// returns a new list containing only the unique elements from the original list.
// The order of elements in the new list should be the same as in the original list.

void main() {
  List<int> numbers = [1, 5, 4, 3, 7, 1, 8, 1, 9, 5, 4];

  print(numbers.toSet());
}