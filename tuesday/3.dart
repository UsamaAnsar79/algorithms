
//In this challenge, print the array after each iteration of the insertion sort, i.e., whenever the next element has been inserted at its correct position. Since the array composed of just the first element is already sorted, begin printing after placing the second element.


InsertionSort(List<int> arr){
    for(int i=1;i<arr.length;i++){
      int j=i;
      while(j>0&& arr[j]<arr[j-1]){
    int temp=arr[j];
    arr[j]=arr[j-1];
    arr[j-1]=temp;
   j--;
   print(arr);
      }
       if(i==arr.length-1){
        print("sorted arr: $arr");
       }
      }
    }
  
  void main(){
    List<int> arr=[7,4,3,5,6,2,1];
    InsertionSort(arr);  
  }
