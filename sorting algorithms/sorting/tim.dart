import 'dart:math';

void insertionSort(List<num> arr, int left, int right) {
  for (int i = left + 1; i <= right; i++) {
    num key = arr[i];
    int j = i - 1;

    while (j >= left && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
}

void merge(List<num> arr, int left, int mid, int right) {
  int n1 = mid - left + 1;
  int n2 = right - mid;

  List<num> leftArr = List.generate(n1, (index) => arr[left + index]);
  List<num> rightArr = List.generate(n2, (index) => arr[mid + 1 + index]);

  int i = 0, j = 0, k = left;

  while (i < n1 && j < n2) {
    if (leftArr[i] <= rightArr[j]) {
      arr[k++] = leftArr[i++];
    } else {
      arr[k++] = rightArr[j++];
    }
  }

  while (i < n1) {
    arr[k++] = leftArr[i++];
  }

  while (j < n2) {
    arr[k++] = rightArr[j++];
  }
}

void timsort(List<num> arr) {
  final int minRun = 32;
  int n = arr.length;

  for (int i = 0; i < n; i += minRun) {
    insertionSort(arr, i, min(i + minRun - 1, n - 1));
  }

  int size = minRun;
  while (size < n) {
    for (int left = 0; left < n; left += 2 * size) {
      int mid = min(left + size - 1, n - 1);
      int right = min(left + 2 * size - 1, n - 1);
      merge(arr, left, mid, right);
    }
    size *= 2;
  }
}

void main() {
  List<num> arr = [5, 2, 9, 1, 5, 6, 3, 8];
  print(arr);
  timsort(arr);
  print("Sorted array: $arr");
}
