gnome(List<int> arr){
  int idx=0;
  while(idx<arr.length){
    if(idx==0 || arr[idx] >= arr[idx-1] ){
 idx++;
    }
    else{
      int temp=arr[idx];
      arr[idx]=arr[idx-1];
      arr[idx -1 ]=temp;
      idx--;
    }
  }
}
void main() {
  List<int> arr = [5, 2, 1, 3, 4];
  print("Original array: $arr");

  gnome(arr); 
  print("Sorted array: $arr");
}