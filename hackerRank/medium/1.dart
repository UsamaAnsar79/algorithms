//Use the counting sort to order a list of strings associated with integers. If two strings are associated with the same integer, they must be printed in their original order, i.e. your sorting algorithm should be stable. There is one other twist: strings in the first half of the array are to be replaced with the character - (dash, ascii 45 decimal).

//Insertion Sort and the simple version of Quicksort are stable, but the faster in-place version of Quicksort is not since it scrambles around elements while sorting.

//Design your counting sort to be stable.
 void countSort(List<List<String>> arr) {
  int n = arr.length;
  
  // Find maximum key to determine the range of counting array
  int maxKey = 0;
  for (int i = 0; i < n; i++) {
    int key = int.parse(arr[i][0]);
    print("key :${key}");
    if (key > maxKey) {
      maxKey = key;
      print("maxkey:${maxKey}");
    }
  }
  
  // Create counting array and dash array
  List<List<String>> counts = List.generate(maxKey + 1, (_) => []);
  print("count:${counts}");
  List<String> dashArray = [];

  // Separate integers and their associated strings into counting array and dash array
  for (int i = 0; i < n; i++) {
    int key = int.parse(arr[i][0]);
    print("key1:${key}");
    String string = arr[i][1];
    print("str:${string}");
    
    // If it's in the first half, add dash to dash array
    if (i < n ~/ 2) {
      dashArray.add('-');
    } else {
      counts[key].add(string); // Add string to counting array
      print("c:${counts}");
    }
  }

  // Concatenate strings from dash arrthat],ay and counting array
  List<String> result = [];
  for (List<String> strings in counts) {
    result.addAll(strings);
    print("res:${result}");
  }

  // Print the result
  print([...dashArray, ...result].join(" "));
}

void main() {
  // Sample Input
  List<List<String>> arr = [
    ["0", "ab"], ["6", "cd"], ["0", "ef"], ["6", "gh"], ["4", "ij"],
    ["0", "ab"], ["6", "cd"], ["0", "ef"], ["6", "gh"], ["0", "ij"],
    ["4", "that"], ["3", "be"], ["0", "to"], ["1", "be"], ["5", "question"],
    ["1", "or"], ["2", "not"], ["4", "is"], ["2", "to"], ["4", "the"]
  ];

  // Call the countSort function
  countSort(arr);
}
