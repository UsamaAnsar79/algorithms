int lilyHomework(List<int> arr) {
  int swap = 0;
  // Count inversions from left to right
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] > arr[i + 1]) {
      swap++;
    }
  }
  // Count inversions from right to left
  swap = 0;
  for (int i = arr.length - 1; i > 0; i--) {
    if (arr[i] < arr[i - 1]) {
      swap++;
    }
  }

  // Return 2 if the number of inversions is at most 2, otherwise return -1
  // return swap <= 2 ? swap : -1;
  return swap;
}

void main() {
  List<int> arr = [2, 5, 3, 1];
  print(lilyHomework(arr)); 
}





