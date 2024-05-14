/// Q 11: Write a Dart code that takes in a list and an integer n as parameters.
/// The program should print a new list containing the first n elements from the original list.

void main() {
  void makeNewList(List list, int n) {
    print(list.getRange(0, n).toList());
  }

  List list = [1, 2, 3, 4, 5, 6];

  makeNewList(list, 3);
}
