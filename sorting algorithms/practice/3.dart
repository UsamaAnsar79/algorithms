//Sort an array in wave form

//large element – small element-large element -small element and so on .it can be small element-larger element – small element-large element -small element too. all you need to maintain is the up-down fashion which represents a wave. 
 // steps
// Sort the array.
//Traverse the array from index 0 to N-1, and increase the value of the index by 2.
//While traversing the array swap arr[i] with arr[i+1].
//Print the final array.
waveSort(List<int> arr){
  arr.sort();
  int n =arr.length;
  for(int i=0;i<n-1;i+=2){
    int temp=arr[i];
    arr[i]=arr[i+1];
    arr[i+1]=temp;
  }
}
void main() {
  List<int> arr = [3, 1, 4, 2, 5,9,12,34,56];
  print(arr);
  waveSort(arr);
  print(arr);}