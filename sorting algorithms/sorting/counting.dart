import 'dart:math';


countingSOrt(List<int>arr){
  int maxi=arr.reduce(max);

  int n=arr.length;
  List<int> count=List<int>.filled(maxi+1,0);
  for(int i=0;i<n;i++){
 count[arr[i]]++;
  }
  for(int i=1;i<count.length;i++){
 count[i]+=count[i-1];
  }
  List<int> output=List<int>.filled(n,0);
  for(int i=n-1;i>=0;i--){
output[count[arr[i]]-1]=arr[i];
count[arr[i]]--;
  }
  for(int i=0;i<n;i++){
    arr[i]=output[i];
  }
 
}
void main(){
  List<int> arr=[4, 3, 12, 1, 5, 5, 3, 9];
  print(arr);
  countingSOrt(arr);
  print(arr);
}