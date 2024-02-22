//Given a sorted list with an unsorted number  in the rightmost cell, can you write some simple code to insert  into the array so that it remains sorted?


  void main(){
    List<int> arr=[1, 2, 4, 5, 3];
  int n=5;
  int valueStored=arr[n-1];
  for(int i=n-2;i>=0;i--){
    if(arr[i]>valueStored){
      arr[i+1]=arr[i];
      print(arr.join(' '));
    }
    else{
      arr[i+1]=valueStored;
      print(arr.join(' '));
      break;
    }
  }
  if(arr[0]>valueStored){
    arr[0]=valueStored;
    print(arr.join(' '));
  }
 }
 