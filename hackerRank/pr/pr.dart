// EASY PROBLEMS
//         1
// BigSort(List<String> arr){
// int n =arr.length;
// for(int i=0;i<n;i++){
//   int minindex=i;
//   for(int j=i+1;j<n;j++){ 
//     if(int.parse(arr[j])< int.parse(arr[minindex])){
//    minindex=j;
//     }   
//   }
//   if(minindex != i){
//     String temp=arr[i];
//     arr[i]=arr[minindex];
//     arr[minindex]=temp ;
//   }
// }
// // }
// void main(){
//  List<String> arr = ['123', '56', '789', '12', '3456'];
//  BigSort(arr);
//  print(arr);
// }

//         2
 

//   void main(){
//     List<int> arr=[1, 2, 4, 5, 3];
//   int n=5;
//   int valueStored=arr[n-1];
//   for(int i=n-2;i>=0;i--){
//     if(arr[i]>valueStored){
//       arr[i+1]=arr[i];
//       print(arr.join(' '));
//     }
//     else{
//       arr[i+1]=valueStored;
//       print(arr.join(' '));
//       break;
//     }
//   }
//   if(arr[0]>valueStored){
//     arr[0]=valueStored;
//     print(arr.join(' '));
//   }
//  }
 
 //      3

  // InsertionSort(List<int> arr){
  //   for(int i=1;i<arr.length;i++){
  //     int j=i;
  //     while(j>0&& arr[j]<arr[j-1]){
  //   int temp=arr[j];
  //   arr[j]=arr[j-1];
  //   arr[j-1]=temp;
  //  j--;
  //  print(arr);
  //     }
  //      if(i==arr.length-1){
  //       print("sorted arr: $arr");
  //      }
  //     }
  //   }
  
  // void main(){
  //   List<int> arr=[7,4,3,5,6,2,1];
  //   InsertionSort(arr);  
  // }

// ....4.....{
// insertionSort(List<int> arr){
//   for(int i=1;i<arr.length;i++){
//     int value=arr[i];
//     int j=i-1;
//     while(j>=0&& arr[j]>value){
//  arr[j+1]=arr[j];
// j--;
//     }
//     arr[j+1]=value;
//   }
//   return arr;
// }
// void main(){
//   List<int> arr=[7,4,3,5,6,2];
//   List<int> res=insertionSort(arr);
//   print(res);
// }

// .......5.......
// insertionSort(List<int> arr){
//   int totalShifts=0;

//   print('Iteration   Array        Shifts');
//   print('0           ${arr.join(' ')}     0');
//   for(int i=1;i<arr.length;i++){
//     int value=arr[i];
//     int j=i-1;
//     int iterationshift=0;
//     while(j>=0&& arr[j]>value){
//  arr[j+1]=arr[j];
// j--;
// iterationshift++;
//     }
//     arr[j+1]=value;
//     totalShifts+=iterationshift;
     
//      print('$i           ${arr.join(' ')}     $iterationshift');
//   }
//   return arr;
// }
// void main(){
//   List<int> arr=[7,4,3,5,6,2];
//   List<int> res=insertionSort(arr);
//   print(res);
// }

// .......  6  Quick sort partition  ......
// QuickSort(List<int> arr,int low,int high){
//   if(low < high){
//     int pivotIndex=Partition(arr, low, high);
//    QuickSort(arr, low, pivotIndex-1);

//     QuickSort(arr, pivotIndex+1, high);
//   }
// }
// Partition(List<int> arr,int low,int high){
//   int pivot=arr[low];
//   int i=low+1;
//   int j=arr.length-1;
//   while(low<high){
//     while(i<=j && arr[i] < pivot){
//       i++;
      
//     }
//     while(i<=j  && arr[j] > pivot){
//       j--;
//     }
//     if(i>=j){
//       break;
//     }
//     int temp=arr[i];
//     arr[i]=arr[j];
//     arr[j]=temp;
//   }
//   arr[low]=arr[j];
//   arr[j]=pivot;
//   return j;
// }
// void main(){
//   List<int> arr=[4, 5, 3, 7 ,2];
//   QuickSort(arr,0,arr.length-1);
//   print(arr);
// }

// ...7 quick sort sorting.....
// QuickSort(List<int> arr,int low,int high){
//   if(low < high){
//     int pivotIndex=Partition(arr, low, high);
//     // Print the left subarray
//     print("Left subarray:");
//     print(arr.sublist(low, pivotIndex));

//     // Print the pivot
//     print("Pivot:");
//     print(arr[pivotIndex]);

//     // Print the right subarray
//     print("Right subarray:");
//     print(arr.sublist(pivotIndex + 1, high + 1));
//    QuickSort(arr, low, pivotIndex-1);

//     QuickSort(arr, pivotIndex+1, high);
//   }
// }
// Partition(List<int> arr,int low,int high){
//   int pivot=arr[low];
//   int i=low+1;
//   int j=arr.length-1;
//   while(low<high){
//     while(i<=j && arr[i] < pivot){
//       i++;
      
//     }
//     while(i<=j  && arr[j] > pivot){
//       j--;
//     }
//     if(i>=j){
//       break;
//     }
//     int temp=arr[i];
//     arr[i]=arr[j];
//     arr[j]=temp;
//   }
//   arr[low]=arr[j];
//   arr[j]=pivot;
//   return j;
// }
// void main(){
//   List<int> arr=[4, 5, 3, 7 ,2];
//   QuickSort(arr,0,arr.length-1);
//   print(arr);
// }


// .....8  quick sort in place algo.....

// void quickSort(List<int> arr, int low, int high) {
//   if (low < high) {
    
//     int pivotIndex = partition(arr, low, high);

   
//     print("Left subarray:");
//     for (int i = low; i < pivotIndex; i++) {
//       print(arr[i]);
//     }

//     // Print pivot
//     print("Pivot:");
//     print(arr[pivotIndex]);

    
//     print("Right subarray:");
//     for (int i = pivotIndex + 1; i <= high; i++) {
//       print(arr[i]);
//     }

   
//     quickSort(arr, low, pivotIndex - 1);
//     quickSort(arr, pivotIndex + 1, high);
//   }
// }

// int partition(List<int> arr, int low, int high) {
//   int pivot = arr[high];
//   int i = (low - 1);

//   for (int j = low; j < high; j++) {
//     if (arr[j] <= pivot) {
//       i++;
//       swap(arr, i, j);
//     }
//   }

//   swap(arr, i + 1, high);
//   return i + 1;
// }

// void swap(List<int> arr, int i, int j) {
//   int temp = arr[i];
//   arr[i] = arr[j];
//   arr[j] = temp;
// }

// void main() {
//   List<int> arr = [5, 3, 8, 2, 4];
//   quickSort(arr, 0, arr.length - 1);
//   print("Sorted array:");
//   print(arr);
// }


// .....9 compare running time of quick and insertion sort

// void swap(List<int> arr, int i, int j) {
//   int temp = arr[i];
//   arr[i] = arr[j];
//   arr[j] = temp;
// }

// int partition(List<int> arr, int low, int high) {
//   int pivot = arr[high];
//   int i = (low - 1);

//   for (int j = low; j < high; j++) {
//     if (arr[j] <= pivot) {
//       i++;
//       swap(arr, i, j);
//     }
//   }

//   swap(arr, i + 1, high);
//   return i + 1;
// }

// int quickSort(List<int> arr, int low, int high) {
//   int swaps = 0;
//   if (low < high) {
//     int pivotIndex = partition(arr, low, high);
//     swaps += high - low; 
//     swaps += quickSort(arr, low, pivotIndex - 1);
//     swaps += quickSort(arr, pivotIndex + 1, high);
//   }

//   return swaps; 
// }

// int insertionSort(List<int> arr, int n) {
//   int shifts = 0;
//   for (int i = 1; i < n; i++) {
//     int key = arr[i];
//     int j = i - 1;
//     while (j >= 0 && arr[j] > key) {
//       shifts++;
//       arr[j + 1] = arr[j];
//       j--;
//     }
//     arr[j + 1] = key;
//   }
//   return shifts;
// }

// void calculateAndPrintDifference(List<int> arr,int n) {
//   int quicksortSwaps = quickSort(arr.toList(), 0, n - 1);
//   int insertionSortShifts = insertionSort(arr, arr.length);

//   int difference = quicksortSwaps - insertionSortShifts;

//   print("Sorted array (quicksort): ${arr}");
//   print("Quicksort swaps: $quicksortSwaps");
//   print("Insertion Sort shifts: $insertionSortShifts");
//   print("Difference: $difference");
// }

// void main() {
//   List<int> arr = [1, 3,9, 8, 2,7, 5];
// int n=7;
//   calculateAndPrintDifference(arr,n);
// }

//  ...10 counting sort ......
// import 'dart:math';
// countSort(List<int> arr){
//   int n=arr.length;
//   int maax=arr.reduce(max);
//   List<int> count=List<int>.filled(maax+1, 0);
//   for(int i=0;i<n;i++){
//     count[arr[i]]++;
//   }
//   List<List<int>> occurence=List<List<int>>.filled(maax+1, []);
//   for(int i=0;i<count.length;i++){
//     occurence[i]=[i,count[i]];
//   }
//   return occurence;
// }
// void main(){
//   List<int> arr=[2,1,3,4,1,4,5,7,8,5,3,7,5,4,2,2];
//   List<List<int>> occur=countSort(arr);
//   for(int i=0;i<occur.length;i++){
//     if(occur[i].isNotEmpty){
//       print("${occur[i][0]} is occur ${occur[i][1]}times ");
//     }
//   }
// }


// .... 11 simple count sort
// import 'dart:math';
// CountSort(List<int> arr){
//   int n = arr.length;
//   int maximum=arr.reduce(max);
//   List<int> count=List<int>.filled(maximum+1, 0);
//   for(int i=0;i<n;i++){
//     count[arr[i]]++;
//   }
//   for(int i=1;i<count.length;i++){
//     count[i]+= count[i-1];
//   }
//   List<int> output=List<int>.filled(n, 0);
//   for(int i=n-1;i>0;i--){
//     output[count[arr[i]]-1]=arr[i];
//     count[arr[i]]--;
//   }
//   for(int i=0;i<n;i++){
//     arr[i]=output[i];
//   }
// }
// void main(){
// List<int> arr=[63, 25, 73, 1, 98, 73, 56, 84, 86, 57, 16, 83, 8, 25, 81, 56, 9, 53, 98, 67, 99, 22, 83, 89, 80, 91, 39, 86, 76, 85, 74, 39, 25, 90, 59, 10, 94, 32, 44, 3, 89, 30, 27, 79, 46, 96, 27, 32, 18, 21, 92, 69, 81, 40, 40, 34, 68, 78, 24, 87, 42, 69, 23, 41, 78, 22, 6, 90, 99, 89, 50, 30, 20, 1, 43, 3, 70, 95, 33, 46, 44, 9, 69, 48, 33, 60, 65, 16, 82, 67, 61, 32, 21, 79, 75, 75, 13, 87, 70, 3];
//  CountSort(arr);
//  print(arr);
//  }

// ....12.......closest number......
// List<dynamic> closestnumber(List<int> arr){
//   arr.sort();
//   int mindiff=arr[1]-arr[0];
//   List<int> closepair=[arr[0],arr[1]];
//   for(int i=1;i<arr.length-1;i++){
//     int diff=arr[i+1] - arr[i];
//     if(diff<mindiff){
//       mindiff=diff;
//       closepair=[arr[i],arr[i+1]];
//     }
//   }
// return [mindiff,closepair];
// }
// void main(){
//  List<int> arr = [5,2,3,7,9];
//   List<dynamic>  result = closestnumber(arr);
//   print("Closest difference between any two elements: ${result[0]}");
//   print("Closest pair of elements: ${result[1][0]} and ${result[1][1]}");

// }

// ....13.....median......
// int findMedian(List<int> arr) {
//   arr.sort();
//   final midIndex = arr.length ~/ 2;
//   return arr[midIndex];
// }

// void main() {
//   List<int> arr = [0, 1, 2, 4, 6, 5, 3];
//   int median = findMedian(arr);
//   print(median); 
// }



// .... 14... find parlour.....
// List<int> icecreamParlor(int m, List<int> cost) {
//   for (int i = 0; i < cost.length; i++) {
//     for (int j = i + 1; j < cost.length; j++) {
//       if (cost[i] + cost[j] == m) {
//         return [i, j]; 
//       }
//     }
//   }
//   throw Exception('No suitable flavors found');
// }

// void main() {
//   int m = 9;
//   List<int> cost = [1, 4, 5, 3, 2]; 
//   List<int> indices = icecreamParlor(m, cost);
//   print(indices);  
// }


//........15.......

// missingnumber(List<int> arr1, List<int> arr2){
//   arr1.sort();
//   arr2.sort();
//   List<int> missingelements=[];
  
//   for(int num in arr2){
//     if(!binarySearch(arr1, num)){
//       missingelements.add(num);
//     }
//   }
//   return missingelements;
// }
//  bool binarySearch(List<int> arr,int target){
//   int low=0;
//   int high=arr.length-1;
//   while(low<=high){
//     int mid=low + ((high - low) ~/2);
//     if(arr[mid]==target){
//       return true;
//     }
//     else if(arr[mid]<target){
//       low=mid+1;
//     }
//     else{
//       high=mid-1;
//     }
//   }
//   return false;
//  }
//  void main() {
//   List<int> arr1 = [1, 3,3, 5, 7, 9];
//   List<int> arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  
//   List<int> missingElements = missingnumber(arr1, arr2);
  
//   print('Missing elements from arr1: $missingElements');
// }


// ......16.....sherlock array...
elementwithequalsum(List<int> arr){
  arr.sort();

  int totalsum=arr.reduce((value, element) => value+element);

  int leftsum=0;
  int rightsum=totalsum;
  for(int i=0;i<arr.length;i++){
    rightsum -= arr[i];
  
  if(leftsum==rightsum){
    // return arr[i];
    return "YES";
  }
  leftsum += arr[i];
  }
  // return -1;
  return "NO";
}
void main(){
  List<int> arr=[1,2,3,4,6];
  String result=elementwithequalsum(arr);
   print('Does there exist an element with equal sum? $result');
}