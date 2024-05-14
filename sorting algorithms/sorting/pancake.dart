pancakeSort(List<int> arr){
  int n= arr.length;
  for(int currentindex=n;currentindex>0;currentindex--){
    int maxvalue=findmaximumvalue(arr, currentindex);
    if(maxvalue != currentindex-1){
      flipping(arr, maxvalue);
      flipping(arr, currentindex-1);
    }
  }
}
findmaximumvalue(List<int> arr,int n){
  int max=0;
  for(int i=0;i<n;i++){
    if(arr[i]>arr[max]){
      max=i;
    }
  }
  return max;
}
flipping(List<int> arr,int idx){
  int start=0;
  while(start < idx){
    int temp=arr[start];
    arr[start]=arr[idx];
    arr[idx]=temp;
    start++;
    idx--;
  }
}

void main() {
  List<int> arr = [23,10, 20, 11, 12, 6, 7];
  print("Original array: $arr");

  pancakeSort(arr); 
  print("Sorted array: $arr");
}