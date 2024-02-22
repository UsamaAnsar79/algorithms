
//Find the median in an array of odd number

int findMedian(List<int> arr) {
  arr.sort();
  final midIndex = arr.length ~/ 2;
  return arr[midIndex];
}

void main() {
  List<int> arr = [0, 1, 2, 4, 6, 5, 3];
  int median = findMedian(arr);
  print(median); 
}

