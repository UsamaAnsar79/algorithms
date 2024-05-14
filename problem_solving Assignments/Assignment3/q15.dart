// Q15. Write a program to make a pyramid pattern with numbers increased by
//     1
//    2 3
//   4 5 6
//  7 8 9 10

import 'dart:io';

void main() {
  int number = 0;
  int rows = 4;

  for (int i = 0; i < rows; i++) {
    for (int k = 0; k < rows - i; k++) {
      stdout.write(' ');
    }
    for (int j = 0; j <= i; j++) {
      number++;
      stdout.write('$number ');
    }

    stdout.writeln(); //Works as a newline.
  }
}
