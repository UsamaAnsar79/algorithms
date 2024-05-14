// Q.12: Write a Dart code that takes in a list of strings and prints a new list
// with the elements in reverse order. The original list should remain unchanged

void main() {
  List<String> country = ["Pakistan", "USA", "Canada", "HongKong"];
  List<String> reverseList = List.of(country).reversed.toList();

  print("Original List: $country");
  print("Reversed List $reverseList");

  

}
