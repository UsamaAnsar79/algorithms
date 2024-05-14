// Q21. Implement a code that finds the maximum and minimum elements in a
// list using a for loop and if-else condition.

void main() {
  List<int> numberList = [1, 5, 4, 3, 8, 9, 0, 2];

  int min = numberList[0];
  int max = numberList[0];

  for (int i = 0; i < numberList.length; i++) {
    if (numberList[i] >= max) {
      max = numberList[i];
    }
    if (numberList[i] < min) {
      min = numberList[i];
    }
  }

  print("Maximum: ${max} , Minimum: ${min}");
}
