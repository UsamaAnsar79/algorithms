swap(List<int> arr, int left,int right){
  var temp= arr[left];
  arr[left]=arr[right];
  arr[right]=temp;
}

List<int> BubbleSort(List<int> arr){

  for(int i=0; i < arr.length;i++){
  for(var j=i+1;j< arr.length;j++){
    if(arr[i]>arr[j]){
      swap(arr,i,j);
    }
   }
  // if(!swapping);
  //  break;
  }
  return arr;
}

void main(){
  List<int> arr =[7,8,5,4,11,21,14,9];
  print(arr);
  var result=BubbleSort(arr);
  print(result);
}