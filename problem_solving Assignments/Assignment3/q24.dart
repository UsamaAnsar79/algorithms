// Q24. Implement a code that finds the average of all the negative numbers in
// a list using a for loop and if-else condition.

void main() {
  List<int> numberList = [-1, 2, -3, 4, -5, 6];

  int sumOfNegative = 0;
  int count = 0;

  for (int i = 0; i < numberList.length; i++) {
    if (numberList[i].isNegative) {
      print(numberList[i]);
      sumOfNegative += numberList[i];
      count++;
    }
  }

  print("The average of all the negative numbers: ${sumOfNegative/count}");
}
