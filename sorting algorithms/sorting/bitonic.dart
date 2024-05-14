bitonicSort(List<int> arr,int low,int count,bool dir){
  if(count>1){
int k= count ~/ 2;
 bitonicSort(arr, low, k, true);
 bitonicSort(arr, low+k,k, false);
 bitonicMerge(arr, low, count, dir);
}
}
bitonicMerge(List<int> arr,int low,int count,bool dir){
  if(count >1){
  int k = count ~/2;
  for(int i=low;i<low+k;i++){
    if(arr[i]>arr[i+k]==dir){
      swap(arr, i, i+k);
    }
  }
  bitonicMerge(arr, low, k, dir);
  bitonicMerge(arr, low+k,k, dir);
  }
}
swap(List<int> arr, int i, int j){
  int temp=arr[i];
  arr[i]=arr[j];
  arr[j]=temp;
}
void main() {
  List<int> arr = [5, 2, 7, 4, 8, 3]; 
  print("Original array: $arr");

  bitonicSort(arr, 0, arr.length, true); 
  print("Sorted array: $arr");
}