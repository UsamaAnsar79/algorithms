//Watson gives Sherlock an array of integers. His challenge is to find an element of the array such that the sum of all elements to the left is equal to the sum of all elements to the right.
//give solution using sorting algorithms in dart

findelementwithequalsum(List<int> arr){
  arr.sort();

  int totalsum=arr.reduce((value, element) => value+element);

  int leftsum=0;
  int rightsum=totalsum;
  for(int i=0;i<arr.length;i++){
    rightsum -= arr[i];
  
  if(leftsum==rightsum){
    return arr[i];
    // return "YES";
  }
  leftsum += arr[i];
  }
  return -1;
  // return "NO";
}
void main(){
  List<int> arr=[1,2,3,4,6];
  int result=findelementwithequalsum(arr);
   print('Does there exist an element with equal sum? $result');
  if(result != -1){
    print("Element with equal sum is $result");
  }
  else{
    print("no such element found");
 
  }
}