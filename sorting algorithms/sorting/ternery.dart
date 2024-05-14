int ternerySearch(var l,var r, var key, var arr){
if(r>=1){
  var mid1= (l + (r - l)/3).toInt();
  var mid2= (r - (r - 1)/3).toInt();
  if(arr[mid1]==key){
  return mid1;
}
if (arr[mid2]==key){
  return mid2;
}
if (key <  arr[mid1]){
  return ternerySearch(l, mid1-1, key, arr);
}
else if (key > arr[mid2]){
  return ternerySearch(mid2+1, r, key, arr);
}
else{
  return ternerySearch(mid1+1, mid2 - 1, key, arr);
}

}
return -1;
}
void main(){
  var arr=[1,2,3,4,5,6,7,8,9,10];
  print(arr);
  var l=0;
  var r=arr.length;
  var key=5;
  var result=ternerySearch(l, r, key, arr);
  print("$key is found at index $result");

}