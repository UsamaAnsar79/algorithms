//Sort an array using Bubble Sort without using loops

bubbleSort(List<int> arr,int n){
   if (n <= 1) {
    // Base case: If there's only one element or less, the array is already sorted
    return;
  }
   // Helper function to perform one pass of bubble sort
  void bubble(int i) {
    if (i == n - 1) {
      // If we've reached the end of the array, we're done with this pass
      return;
    }
  if(arr[i]> arr[i+1]){
   int temp=arr[i];
   arr[i]=arr[i+1];
   arr[i+1]=temp;
  }
  bubble(i+1);
}
bubble(0);
bubbleSort(arr, n-1);
}

void main(){
  List<int> arr=[3,4,5,1,2,7];
  int n=arr.length;
  bubbleSort(arr, n);
  print(arr);
}