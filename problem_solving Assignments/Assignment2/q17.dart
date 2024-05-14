// Q.17: Given a list of integers,
// write a Dart code that uses the map() method
// to create a new list with each value squared.
// The program should take in the original list as a parameter and print the new list.

void main() {
  List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8];

  List<int> squareValue(List<int> numberList) {
    List<int> squaredList = numberList.map((e) => e * e).toList();
    return squaredList;
  }


  print("Original List: $numbers");
  print("Squared Value List: ${squareValue(numbers)}");

}
