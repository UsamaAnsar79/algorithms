

int fibSearch(List arr,int x,int n){
  int fib1=0;
  int fib2=1;
  int fib3=fib1+fib2;

  while(fib3<n){
    fib2=fib1;
    fib1=fib3;
    fib3=fib2+fib1;
  }
  int offset=-1;
  while(fib3>1){
    int i;
if (offset + fib2 < n - 1) {
  i = offset + fib2;
} else {
  i = n - 1;
}
if(arr[i]<x){
  fib3=fib1;
  fib1=fib2;
  fib2=fib3-fib1;
  offset=i;
}
if(arr[i]>x){
  fib3=fib2;
  fib1=fib1 - fib2;
  fib2=fib3-fib1;
}
else{
  return i;
}
  }
  if(arr[offset + 1]==x){
    return offset + 1;
  }
  return -1;
}
void main(){
  List arr=[1,2,3,4,5,6,7,8,9,10];
  var n=arr.length;
  int x=7;
  var res=fibSearch(arr, x, n);
  print("index of $x is $res");
}