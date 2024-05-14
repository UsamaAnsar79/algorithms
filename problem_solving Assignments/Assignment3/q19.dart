// Q19. Write a program that takes a list of numbers as input and prints the
// numbers greater than 5 using a for loop and if-else condition.

import 'dart:io';

void main() {
  List<int> numberList = [];

  bool flag = true;
  stdout.write("Enter number\n");

  while (flag) {
    var number = stdin.readLineSync();

    if (number == "") {
      flag = false;
    } else {
      int? parseNumber = int.tryParse(number.toString());

      if (parseNumber != null) {
        numberList.add(parseNumber);
      }
    }
  }

  getGreaterThanFive() {
    print("Following are greater than five:");
    for (int i = 0; i < numberList.length; i++) {
      if (numberList[i] > 5) {
        print(numberList[i]);
      }
    }
  }

  getGreaterThanFive();
}
