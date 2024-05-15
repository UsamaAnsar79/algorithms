List<int> playingWithNumbers(List<int> arr, List<int> queries) {
  // Sort the array for better performance
  arr.sort();
  // print("arr:${arr}");

  int n = arr.length;
  
  int prefixSum = 0; 
  List<int> results = [];

  // Calculate the cumulative sum of array elements
  for (int i = 0; i < n; i++) {
    prefixSum += arr[i];
    // print("prefixsum:${prefixSum}");

  }

  // Process each query
  for (int query in queries) {
    // print("query:${query}");
    prefixSum += query; // Update prefixSum with query
    // print("prefixsum1:${prefixSum}");

    // Calculate the sum of absolute values of array elements
    int sumOfAbs = 0;

    // Iterate through the array to calculate the sum of absolute values
    for (int i = 0; i < n; i++) {
      int absValue = (arr[i] + query).abs();
      // print("abs:${absValue}");
      sumOfAbs += absValue;
      // print("sumofabs:${sumOfAbs}");


    }

    results.add(sumOfAbs); // Store the result for this query
    // print("res:${results}");
  }

  return results;

}


void main() {
  // Input
  List<int> arr = [-1, 2, -3];
  List<int> queries = [1, -2, 3];

  // Output
  List<int> results = playingWithNumbers(arr, queries);

  // Print the results
  int sum = 0;
  for (int i = 0; i < results.length; i++) {
    sum += queries[i]; // Update the sum for the current query
    print("sum:${sum}");
    int sumOfAbs = 0;
    for (int j = 0; j < arr.length; j++) {
      sumOfAbs += (arr[j] + sum).abs(); // Calculate the sum of absolute values after the current query
      print("sumofabs:$sumOfAbs");
    }
    print(sumOfAbs);
  }
}



