cocktailSort(List<int> arr){
  int left=0;
  int right=arr.length-1;
  bool swapped=true;
  while(swapped){
    swapped=false;
    // move left to right
    for(int i=left;i<right;i++){
      if(arr[i]>arr[i+1]){
        int temp=arr[i];
        arr[i]=arr[i+1];
        arr[i+1]=temp;
        swapped=true;
      }
    }
    if(!swapped){
      break;
    }
    swapped=false;
    right--;
    for(int i=right;i>=left;i--){
      if(arr[i]>arr[i+1]){
         int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        swapped = true;
      }
    }
    left++;
  }

}
void main() {
  List<int> arr = [5, 1, 4, 2, 8, 9];
  
  print("Original array: $arr");
  
  cocktailSort(arr);
  
  print("Sorted array: $arr");
}