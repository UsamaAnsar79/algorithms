
void countingSort(List<int> arr) {
  int n = arr.length;

  // Find the maximum value in the input array
  int max = arr.reduce((value, element) => value > element ? value : element);

  // Create a count array to store the count of each element
  List<int> count = List<int>.filled(max + 1, 0);

  // Populate the count array with the occurrences of each element
  for (int i = 0; i < n; i++) {
    count[arr[i]]++;
  }

  // Update the count array to store the cumulative count
  for (int i = 1; i <= max; i++) {
    count[i] += count[i - 1];
  }

  // Create a temporary array to store the sorted elements
  List<int> temp = List<int>.filled(n, 0);

  // Build the sorted array directly
  for (int i = n - 1; i >= 0; i--) {
    temp[count[arr[i]] - 1] = arr[i];
    count[arr[i]]--;
  }

  // Copy the sorted elements back to the original array
  for (int i = 0; i < n; i++) {
    arr[i] = temp[i];
  }}

void main() {
  List<int> arr = [4, 2, 2, 8, 3, 3, 1];
  
  print("Original array: $arr");
  
  countingSort(arr);

  print("Sorted array: $arr");
}

 