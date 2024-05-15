//Given two arrays of integers, find which elements in the second array are missing from the first array.



missingnumber(List<int> arr1, List<int> arr2){
  arr1.sort();
  arr2.sort();
  List<int> missingelements=[];
  
  for(int num in arr2){
    if(!binarySearch(arr1, num)){
      missingelements.add(num);
    }
  }
  return missingelements;
}
 bool binarySearch(List<int> arr,int target){
  int low=0;
  int high=arr.length-1;
  while(low<=high){
    int mid=low + ((high - low) ~/2);
    if(arr[mid]==target){
      return true;
    }
    else if(arr[mid]<target){
      low=mid+1;
    }
    else{
      high=mid-1;
    }
  }
  return false;
 }
 void main() {
  List<int> arr1 = [1, 3,3, 5, 7, 9];
  List<int> arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  
  List<int> missingElements = missingnumber(arr1, arr2);
  
  print('Missing elements from arr1: $missingElements');
}