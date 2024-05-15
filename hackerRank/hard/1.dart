int insertionSort(List<int> arr) {
  int shifts = 0;
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      shifts++;
      j = j - 1;
    }
    arr[j + 1] = key;
  }
  return shifts;
}

void main() {
  List<List<int>> queries = [
    [1, 1, 1, 2, 2],
    [2, 1, 3, 1, 2]
  ];
  for (List<int> query in queries) {
    print(insertionSort(query));
  }
}
