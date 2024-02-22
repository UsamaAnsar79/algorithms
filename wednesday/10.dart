//Given a list of integers, count and return the number of times each value appears as an array of integers.

import 'dart:math';
countSort(List<int> arr){
  int n=arr.length;
  int maax=arr.reduce(max);
  List<int> count=List<int>.filled(maax+1, 0);
  for(int i=0;i<n;i++){
    count[arr[i]]++;
  }
  List<List<int>> occurence=List<List<int>>.filled(maax+1, []);
  for(int i=0;i<count.length;i++){
    occurence[i]=[i,count[i]];
  }
  return occurence;
}
void main(){
  List<int> arr=[2,1,3,4,1,4,5,7,8,5,3,7,5,4,2,2];
  List<List<int>> occur=countSort(arr);
  for(int i=0;i<occur.length;i++){
    if(occur[i].isNotEmpty){
      print("${occur[i][0]} is occur ${occur[i][1]}times ");
    }
  }
}
