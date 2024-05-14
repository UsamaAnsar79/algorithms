//Bogo Sort is a highly inefficient and impractical sorting algorithm. It works by randomly shuffling the elements of an array and checking if the array is sorted. If it's not sorted, the process repeats until a sorted array is found. Due to its randomness, it has an average-case time complexity of O((n+1)!), making it extremely inefficient for practical use.

//BogoSort also known as permutation sort, stupid sort, slow sort, shotgun sort or monkey sort is a particularly ineffective algorithm one person can ever imagine


import 'dart:math';

bool isSorted(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] > arr[i + 1]) {
      return false;
    }
  }
  return true;
}

void bogoSort(List<int> arr) {
  Random random = Random();

  while (!isSorted(arr)) {
    // Shuffle the array randomly
    for (int i = arr.length - 1; i > 0; i--) {
      int j = random.nextInt(i + 1);
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
}

void main() {
  List<int> arr = [5, 2, 1, 3,9,8,0, 4]; 
  print("Original array: $arr");

  bogoSort(arr); 
  print("Sorted array: $arr");
}
//Time Complexity: 

// Worst Case : O(?) (since this algorithm has no upper bound)
// Average Case: O(n*n!)
// Best Case : O(n)(when array given is already sorted)
// Auxiliary Space: O(1)