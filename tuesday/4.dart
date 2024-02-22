//in the previous challenge, you wrote code to perform an Insertion Sort on an unsorted array. But how would you prove that the code is correct? I.e. how do you show that for any input your code will provide the right output?


insertionSort(List<int> arr){
  for(int i=1;i<arr.length;i++){
    int value=arr[i];
    int j=i-1;
    while(j>=0&& arr[j]>value){
 arr[j+1]=arr[j];
j--;
    }
    arr[j+1]=value;
  }
  return arr;
}
void main(){
  List<int> arr=[7,4,3,5,6,2];
  List<int> res=insertionSort(arr);
  print(res);
}
