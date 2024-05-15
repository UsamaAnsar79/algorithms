// using previous example print the array after each iteration

insertionSort(List<int> arr){
  for(int i=1;i<arr.length;i++){
    int j=i;
  while( j>0 && arr[j]<arr[j-1]){
int temp=arr[j];
arr[j]=arr[j-1];
arr[j-1]=temp;
j--;
  print(arr);
    }
     if (i == arr.length - 1) {
      print('Sorted array: $arr');
    }
  }
}
void main(){
  List<int> arr=[1, 4, 3, 5, 6, 2];
  insertionSort(arr);
}