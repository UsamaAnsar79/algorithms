brickSort(List<int> arr){
  bool swapped=true;
  int n=arr.length;
  while(swapped){
    swapped=false;
    for(int i=1;i<=n-2;i+=2){
      if(arr[i]>arr[i+1]){
        int temp=arr[i];
        arr[i]=arr[i+1];
        arr[i+1]=temp;
        swapped=true;
      }
    }
     for(int i=0;i<=n-2;i+=2){
      if(arr[i]>arr[i+1]){
        int temp=arr[i];
        arr[i]=arr[i+1];
        arr[i+1]=temp;
        swapped=true;
      }
    }
  }
}
void main() {
  List<int> arr = [12, 34, 54, 2, 3];
  print("Array before sorting: $arr");
  brickSort(arr);
  print("Array after sorting: $arr");
}