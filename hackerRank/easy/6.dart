//Given a list of integers, count and return the number of times each value appears as an array of integers

import 'dart:math';

List<List<int>> CountOccurrences(List<int> arr) {
  int maax = arr.reduce(max);
  int n = arr.length;
  List<int> count = List<int>.filled(maax + 1, 0);

  // Counting occurrences of each element
  for (int i = 0; i < n; i++) {
    count[arr[i]]++;
  }

  List<List<int>> occurrences = List<List<int>>.filled(maax + 1, []);

  // Storing occurrences in the list of lists
  for (int i = 0; i < count.length; i++) {
    if (count[i] > 0) {
      occurrences[i] = [i, count[i]];
    }
  }

  return occurrences;
}

void main() {
  List<int> arr = [63, 25, 73, 1, 98, 73, 56, 84, 86, 57, 16, 83, 8, 25, 81, 56, 9, 53, 98, 67, 99, 22, 83, 89, 80, 91, 39, 86, 76, 85, 74, 39, 25, 90, 59, 10, 94, 32, 44, 3, 89, 30, 27, 79, 46, 96, 27, 32, 18, 21, 92, 69, 81, 40, 40, 34, 68, 78, 24, 87, 42, 69, 23, 41, 78, 22, 6, 90, 99, 89, 50, 30, 20, 1, 43, 3, 70, 95, 33, 46, 44, 9, 69, 48, 33, 60, 65, 16, 82, 67, 61, 32, 21, 79, 75, 75, 13, 87, 70, 33];

  List<List<int>> occurrences = CountOccurrences(arr);

  for (int i = 0; i < occurrences.length; i++) {
    if (occurrences[i].isNotEmpty) {
      print('${occurrences[i][0]} occurs ${occurrences[i][1]} times');
    }
  }
}
