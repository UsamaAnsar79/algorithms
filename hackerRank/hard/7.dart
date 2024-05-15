import 'dart:io';

void main() {
  // Read input
  var inputs = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
  print("input:${inputs}");
  var n = inputs[0];
  print("n:${n}");
  var m = inputs[1];
  print("m:${m}");
  var k = inputs[2];
  print("k:${k}");

  var arr = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
  print("arr:${arr}");

  // Perform queries
  for (int i = 0; i < m; i++) {
    var query = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
    print("query:${query}");
    var l = query[0];
    print("l:${l}");
    var r = query[1];
    print("r:${r}");
    
    // Sort the subarray
    arr.replaceRange(l, r + 1, arr.sublist(l, r + 1)..sort());  // from arr.sublist(0,2)=>4,3,2 and sort 2 3 4
    print(arr);

    // Output the kth element
    print("k:${arr[k]}");
  }
}




