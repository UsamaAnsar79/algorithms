stoogeSort(List<int> arr,int startidx,int endidx){
  if(startidx > endidx){
    return;
  }
  if(arr[startidx] > arr[endidx]){
    int temp=arr[startidx];
    arr[startidx]=arr[endidx];
    arr[endidx]=temp;
  }
  if(endidx - startidx +1 > 2){
    int third= ((endidx - startidx+1)~/3);
     // Recursively sort the first two-thirds of the array
    stoogeSort(arr, startidx, endidx - third);
   

    // Recursively sort the last two-thirds of the array
    stoogeSort(arr, startidx + third, endidx);
    

    // Recursively sort the first two-thirds again to ensure the entire array is sorted
    stoogeSort(arr, startidx, endidx - third);
  }
}

void main() {
  List<int> arr = [5, 2, 8, 1, 3, 7, 4, 6]; 
  print("Original array: $arr");

  stoogeSort(arr, 0, arr.length - 1);
  print("Sorted array: $arr");
}