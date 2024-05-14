// Find the missing element in the array

List<int> findMissingElements(List<int> arr) {
  // Sort the array
  arr.sort();

  List<int> missingElements = [];

  // Iterate through the sorted array to find missing elements
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i + 1] - arr[i] > 1) {
      // If the difference between adjacent elements is greater than 1,
      // there's a gap, so add the missing elements between them to the list
      for (int j = arr[i] + 1; j < arr[i + 1]; j++) {
        missingElements.add(j);
      }
    }
  }

  return missingElements;
}

void main() {
  List<int> arr = [1, 2, 4, 5, 7, 10];
  List<int> missingElements = findMissingElements(arr);
  print("Missing elements: $missingElements");
}
