// import 'dart:math' show sqrt;
// min(x,y){
//   if(x<y){
//     return x;
//   }
//   else{
//     return y;
//   }
// }
// int jumpSearch(List a, int x){
//   var n=a.length;
//   var step= sqrt(n).floor().toInt();
//   int prev=0;
//   while(a[min(step,n)-1] < x){
//     prev=step;
//     step += sqrt(n).floor().toInt();
//     if(prev >=  n){
//       return -1;
//     }

//   }
//   while(a[prev]<x){
//     prev=prev+1;
//     if(prev == min(step,n)){
//       return -1;
//     }
//   }
//   if(a[prev] == x){
//     return prev;
//   }
//   return -1;
// }

// void main(){
//   List a=[0,1,1,2,3,5,8,13,21,34,55,89,144];
//   var x=55;
//   var result=jumpSearch(a, x);
//   print ("$x is found at index $result");
// }

// another method
import 'dart:math';
 int jumpSearch(List<int> arr, int target){
   int n=arr.length;
   int step=(sqrt(n)).toInt();
int prev=0;
while(arr[min(step,n)-1] < target){
  prev =step;
  step += sqrt(n).toInt();
  if(prev >= n){
    return -1;
  }
}
for(int i=prev;i<min(step,n);i++){
  if(arr[i]==target){
    return i;
  }

}
return -1;
 }
 void main() {
  List<int> sortedArray = [1, 5, 7, 9, 15, 19,22, 28, 39];
  int targetValue = 19;

  int result = jumpSearch(sortedArray, targetValue);

  if (result != -1) {
    print("Element $targetValue found at index $result.");
  } else {
    print("Element $targetValue not found in the array.");
  }
}
