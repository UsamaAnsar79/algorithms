//Consider an array of numeric strings where each string is a positive number with anywhere from  to  digits. Sort the array's elements in non-decreasing, or ascending order of their integer values and return the sorted array.

BigSort(List<String> arr){
int n =arr.length;
for(int i=0;i<n;i++){
  int minindex=i;
  for(int j=i+1;j<n;j++){ 
    if(int.parse(arr[j])< int.parse(arr[minindex])){
   minindex=j;
    }   
  }
  if(minindex != i){
    String temp=arr[i];
    arr[i]=arr[minindex];
    arr[minindex]=temp ;
  }
}
}
void main(){
 List<String> arr = ['123', '56', '789', '12', '3456'];
 BigSort(arr);
 print(arr);
}