List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr; // Base case: If the list has 0 or 1 element, it's already sorted
  }

  int mid = arr.length ~/ 2; // Find the middle index

  List<int> leftHalf = arr.sublist(0, mid); // Split the list into two halves
  List<int> rightHalf = arr.sublist(mid);

  // Recursively sort both halves
  leftHalf = mergeSort(leftHalf);
  rightHalf = mergeSort(rightHalf);

  // Merge the sorted halves
  return merge(leftHalf, rightHalf);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> mergedList = [];

  // Merge the two sorted lists
  while (left.isNotEmpty && right.isNotEmpty) {
    if (left.first <= right.first) {
      mergedList.add(left.removeAt(0)); // Append the smaller element from left list
    } else {
      mergedList.add(right.removeAt(0)); // Append the smaller element from right list
    }
  }

  // Append any remaining elements from the left or right list
  mergedList.addAll(left);
  mergedList.addAll(right);

  return mergedList;
} 

void main() {
  List<int> arr = [38, 27, 43, 3, 9, 82, 10]; // Example input list
  print("Original array: $arr");

  List<int> sortedArray = mergeSort(List.of(arr)); // Sort the array using Merge Sort
  print("Sorted array: $sortedArray");
}
