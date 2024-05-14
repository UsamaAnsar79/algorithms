// Q.16: Implement a Dart code that uses the where() method to filter out
// odd numbers from a list of integers.
// The program should take in the original list as a parameter and print a new list containing only the even numbers.

void main() {
  List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8];

  List<int> filterOdd(List<int> list) {
    List<int> filteredList =
        List.of(numbers).where((element) => !element.isOdd).toList();
    return filteredList;
  }

  print("Original List: $numbers");
  print("Filtered Odd: ${filterOdd(numbers)}");
}
