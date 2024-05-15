//Can you modify your previous Insertion Sort implementation to keep track of the number of shifts it makes while sorting? The only thing you should print is the number of shifts made by the algorithm to completely sort the array. A shift occurs when an element's position changes in the array. Do not shift an element if it is not necessary.

void insertionSort(List<int> arr) {
  int n = arr.length;
  int totalShifts = 0;

  print('Iteration   Array        Shifts');
  print('0           ${arr.join(' ')}     0');

  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;
    int iterationShifts = 0;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
      iterationShifts++;
    }

    arr[j + 1] = key;
    totalShifts += iterationShifts;

    print('$i           ${arr.join(' ')}     $iterationShifts');
  }

  print('\nTotal                     $totalShifts');
}

void main() {
  List<int> arr = [2, 1, 3, 1, 2];
  insertionSort(arr);
}
