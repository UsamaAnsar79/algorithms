///Given an array of integers and a target value, determine the number of pairs of array elements that have a difference equal to the target value.

pair(List<int> arr,int k){
  int count =0;

  for(int element in arr){
    if(arr.contains(element+k)){
      count++;
    }
  }
  return count;
}
void main() {
  int k = 2;
  List<int> arr = [1, 5, 3, 4, 2];

  print(pair(arr, k)); 
}