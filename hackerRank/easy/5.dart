

quickSort(List<int> arr,int low,int high){
  if(low<high){
    int pi=partition(arr, low, high);
    quickSort(arr, low, pi-1);
    quickSort(arr, pi+1, high);
  }
  return arr;
}
int partition(List<int> arr,int low,int high){
  int pivot=arr[high];
  int i=low-1;
  for(int j=low;j<high;j++){
    if(arr[j]<pivot){
      i++;
      swap(arr,i,j);
    }
  }
  swap(arr,i+1,high);
  return i+1;
}
swap(List<int> arr,int i,int j){
  int temp=arr[i];
  arr[i]=arr[j];
  arr[j]=temp;
}
void main(){
  List<int> arr=[5,7,8,5,3,6,8,11,10];
  int high=arr.length-1;
  int low=0;
List<int> result=quickSort(arr, low, high);
  print(result);
}


//In Dart, you can implement the quicksort algorithm by declaring the pivot at the start. 
// void main() {
//   List<int> numbers = [5, 3, 8, 4, 2, 7, 1, 10, 6, 9];
//   print('Original List: $numbers');
//   quickSort(numbers, 0, numbers.length - 1);
//   print('Sorted List: $numbers');
// }

// void quickSort(List<int> arr, int low, int high) {
//   if (low < high) {
//     int pivotIndex = partition(arr, low, high);
//     quickSort(arr, low, pivotIndex - 1);
//     quickSort(arr, pivotIndex + 1, high);
//   }
// }

// int partition(List<int> arr, int low, int high) {
//   int pivot = arr[low];
//   int i = low + 1;
//   int j = high;
  
//   while (true) {
//     while (i <= j && arr[i] <= pivot) {
//       i++;
//       print(arr);
//     }
//     while (i <= j && arr[j] > pivot) {
//       j--;
//      
//     }
//     if (i >= j) {
//       break;
//     }
//     int temp = arr[i];
//     arr[i] = arr[j];
//     arr[j] = temp;
//   }
//   arr[low] = arr[j];
//   arr[j] = pivot;
//   return j;
// }
