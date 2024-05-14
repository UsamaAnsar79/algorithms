import 'dart:math';

int binarySearch(List<int> arr, int low, int high, int target) {
  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (arr[mid] == target) {
      return mid; // Target found
    } else if (arr[mid] < target) {
      low = mid + 1; // Search the right half
    } else {
      high = mid - 1; // Search the left half
    } 
  }

  return -1; // Target not found
}

int exponentialSearch(List<int> arr, int target) {
  int n = arr.length;

  // Find the range for binary search by repeated doubling
  int i = 1;
  while (i < n && arr[i] < target) {
    i *= 2;
  }

  // Perform binary search in the identified range
  return binarySearch(arr, i ~/ 2, min(i, n - 1), target);
}

void main() {
  List<int> sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int targetValue = 9;

  int result = exponentialSearch(sortedArray, targetValue);

  if (result != -1) {
    print("Element $targetValue found at index $result.");
  } else {
    print("Element $targetValue not found in the array.");
  }
}
