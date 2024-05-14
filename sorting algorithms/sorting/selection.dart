 Swap(List<int> arr,int left, int right){
  var temp=arr[left];
  arr[left]=arr[right];
  arr[right]=temp;
}

SelectionSort(List<int> arr){
  for(int i=0;i<arr.length;i++){
    int minindex=i;
    for(int j=i+1;j<arr.length;j++){
if(arr[j] < arr[minindex]){
  minindex=j;
}
    }
    Swap(arr, i, minindex);
  }
  return arr;
}
void main(){
  List<int> arr=[24,12,9,5,31,16,18];
  print(arr);
  var result=SelectionSort(arr);
  print(result);
}