void combSort(List<int> arr) {

  int gap = arr.length;
  double shrink = 1.3;
  bool sorted = false;

  while (!sorted) {
    // Update the gap size for the next iteration
    gap = (gap / shrink).floor();
    if (gap > 1) {
      sorted = false;
    } else {
      gap = 1;
      sorted = true; // The array is sorted if the gap is 1
    }

    // Perform a single comb sort pass with the current gap
    int i = 0;
    while (i + gap < arr.length) {
      if (arr[i] > arr[i + gap]) {
        // Swap elements if they are in the wrong order
        int temp = arr[i];
        arr[i] = arr[i + gap];
        arr[i + gap] = temp;
        sorted = false; // Array is not fully sorted yet
      }
      i++;
    }
  }
}

void main() {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  
  print("Original array: $arr");
  
  combSort(arr);
  
  print("Sorted array: $arr");
}
