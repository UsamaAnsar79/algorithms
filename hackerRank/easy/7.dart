//Given an unsorted list of integers, use the counting sort method to sort the list and then print the sorted list.
import 'dart:math';
countSort(List<int> arr){
  int maxi=arr.reduce(max);
  int n= arr.length;
  List<int> count=List<int>.filled(maxi+1, 0);
  for(int i=0;i<n;i++){
    count[arr[i]]++;
  }
  for(int i=1;i<count.length;i++){
    count[i]+=count[i-1];
  }
  List<int> output=List<int>.filled(n,0);
  for(int i=n-1;i>=0;i--){
    output[count[arr[i]]-1]=arr[i];
    count[arr[i]]--;

  }
  for(int i=0;i<n;i++){
    arr[i]=output[i];
  }
}
void main(){
   List<int> arr = [63, 25, 73, 1, 98, 73, 56, 84, 86, 57, 16, 83, 8, 25, 81, 56, 9, 53, 98, 67, 99, 22, 83, 89, 80, 91, 39, 86, 76, 85, 74, 39, 25, 90, 59, 10, 94, 32, 44, 3, 89, 30, 27, 79, 46, 96, 27, 32, 18, 21, 92, 69, 81, 40, 40, 34, 68, 78, 24, 87, 42, 69, 23, 41, 78, 22, 6, 90, 99, 89, 50, 30, 20, 1, 43, 3, 70, 95, 33, 46, 44, 9, 69, 48, 33, 60, 65, 16, 82, 67, 61, 32, 21, 79, 75, 75, 13, 87, 70, 33];
   countSort(arr);
   print("sorted array: $arr");
}