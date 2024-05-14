// Q16. Write a program to make such a pattern as a pyramid with an asterisk.
//    *
//   * *
//  * * *
// * * * *

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
      stdout.write('* ');
    }

    stdout.writeln(); //Works as a newline.
  }
}
