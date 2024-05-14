
void bucketSort(List<double> arr) {
  int n = arr.length;

  // Create a list of empty buckets
  List<List<double>> buckets = List.generate(n, (_) => []);

  // Add elements to buckets
  for (int i = 0; i < n; i++) {
    int bucketIndex = (n * arr[i]).floor();
    buckets[bucketIndex].add(arr[i]);
  }

  // Sort each bucket individually
  for (int i = 0; i < n; i++) {
    buckets[i].sort();
  }

  // Concatenate buckets to get the sorted array
  int index = 0;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < buckets[i].length; j++) {
      arr[index++] = buckets[i][j];
    }
  }
}

void main() {
  List<double> arr = [0.42, 0.32, 0.33, 0.52, 0.37, 0.47, 0.51]; // Example input list
  print("Original array: $arr");

  bucketSort(arr); // Sort the array using Bucket Sort
  print("Sorted array: $arr");
}



