//Can you modify your previous Insertion Sort implementation to keep track of the number of shifts it makes while sorting? The only thing you should print is the number of shifts made by the algorithm to completely sort the array. A shift occurs when an element's position changes in the array. Do not shift an element if it is not necessary.


insertionSort(List<int> arr){
 int totalShifts=0;

  print('Iteration   Array        Shifts');
  print('0           ${arr.join(' ')}     0');
  for(int i=1;i<arr.length;i++){
    int value=arr[i];
    int j=i-1;
    int iterationshift=0;
    while(j>=0&& arr[j]>value){
 arr[j+1]=arr[j];
j--;
iterationshift++;
    }
    arr[j+1]=value;
    totalShifts+=iterationshift;
     
     print('$i           ${arr.join(' ')}     $iterationshift');
  }
  return arr;
}
void main(){
  List<int> arr=[7,4,3,5,6,2];
  List<int> res=insertionSort(arr);
  print(res);
}
