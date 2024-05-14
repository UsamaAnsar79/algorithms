void shellSort(List<int> arr){
  int n=arr.length;
  //calculate gap
  for(int  gap= n~/2; gap>0;gap~/=2){
    for(int i=gap;i<n;i++){
      int temp=arr[i];
      int j;
      for(j=gap; j>=gap&&arr[j-gap]>temp;j-=gap){
        arr[j]=arr[j-gap];
      }
      arr[j]=temp;
      }
    }
  }
void main() {
   List<int> arr = [12, 34, 54, 2, 3,8,9,6,11];
   print("Original array: $arr");
   shellSort(arr);
   print("Sorted array: $arr");
}