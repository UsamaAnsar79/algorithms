// import 'dart:async';

// sleepSort(List<int> arr){
//   List<int> result=[];
//   for(int num in arr){
//     Timer(Duration(milliseconds:num),() {
//       result.add(num);
//       print(num);
//      });
//   }
//   Future.wait(List.generate(arr.length, (index) => Future(() {}))).then((_){
//     print("sorted array: $result");
//   });
// }
// void main(){
//    List<int> arr = [5, 2, 1, 3, 4]; // Example input list
//   print("Original array: $arr");

//   sleepSort(arr);
// }

import 'dart:async';

void sleepSort(List<int> arr) {
  List<int> sortedArr = []; // Initialize an empty list for the sorted elements

  // Create a separate future (thread) for each element in the array
  for (int num in arr) {
    // Start a timer for each element, where the delay is proportional to the value of the element
    Timer(Duration(milliseconds: num), () {
      // When the timer ends, add the element to the sorted array
      sortedArr.add(num);
      // Print the sorted array element as it's added (optional)
      print(num);
    });
  }

  // Wait for all futures (threads) to complete before proceeding
  Future.wait(List.generate(arr.length, (index) => Future(() {}))).then((_) {
    // Print the sorted array after all elements have been added
    print('Sorted array: $sortedArr');
  });
}

void main() {
  List<int> arr = [5, 2, 1, 3, 4]; // Example input list
  print("Original array: $arr");

  sleepSort(arr); // Sort the array using Sleep Sort
}

